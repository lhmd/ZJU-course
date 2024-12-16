import numpy as np
import math
import torch
import torch.nn as nn
import torch.nn.functional as F
import torchvision.models as models

# VGG
class Generator(nn.Module):
    def __init__(self):
        super(Generator, self).__init__()

        self.dw_conv01 = nn.Sequential(
            nn.Conv2d(4, 32, kernel_size=3, stride=2, padding=1),
            nn.LeakyReLU(negative_slope=0.2)
        )
        self.dw_conv02 = nn.Sequential(
            nn.Conv2d(32, 64, kernel_size=3, stride=2, padding=1),
            nn.LeakyReLU(negative_slope=0.2)
        )
        self.dw_conv03 = nn.Sequential(
            nn.Conv2d(64, 128, kernel_size=3, stride=2, padding=1),
            nn.LeakyReLU(negative_slope=0.2)
        )
        self.dw_conv04 = nn.Sequential(
            nn.Conv2d(128, 256, kernel_size=3, stride=2, padding=1),
            nn.LeakyReLU(negative_slope=0.2)
        )
        self.dw_conv05 = nn.Sequential(
            nn.Conv2d(256, 512, kernel_size=3, stride=2, padding=1),
            nn.LeakyReLU(negative_slope=0.2)
        )
        self.dw_conv06 = nn.Sequential(
            nn.Conv2d(512, 512, kernel_size=3, stride=2, padding=1),
            nn.ReLU()
        )

        # attention module
        cnum = 32
        self.at_conv05 = AttentionConv(cnum * 16, cnum * 16, ksize=1, fuse=False)
        self.at_conv04 = AttentionConv(cnum * 8, cnum * 8)
        self.at_conv03 = AttentionConv(cnum * 4, cnum * 4)
        self.at_conv02 = AttentionConv(cnum * 2, cnum * 2)
        self.at_conv01 = AttentionConv(cnum, cnum)

        # decoder
        self.up_conv05 = nn.Sequential(
            # decode layer 5
            nn.Conv2d(512, 512, kernel_size=3, stride=1, padding=1),
            nn.ReLU()
        )
        self.up_conv04 = nn.Sequential(
            # decode layer 4
            nn.Conv2d(1024, 256, kernel_size=3, stride=1, padding=1),
            nn.ReLU()
        )
        self.up_conv03 = nn.Sequential(
            # decode layer 3
            nn.Conv2d(512, 128, kernel_size=3, stride=1, padding=1),
            nn.ReLU()
        )
        self.up_conv02 = nn.Sequential(
            # decode layer 2
            nn.Conv2d(256, 64, kernel_size=3, stride=1, padding=1),
            nn.ReLU()
        )
        self.up_conv01 = nn.Sequential(
            # decode layer 1
            nn.Conv2d(128, 32, kernel_size=3, stride=1, padding=1),
            nn.ReLU()
        )

        self.decoder = nn.Sequential(
            # decode layer 0
            nn.Conv2d(64, 32, kernel_size=3, stride=1, padding=1),
            nn.ReLU(),
            nn.Conv2d(32, 3, kernel_size=3, stride=1, padding=1),
            nn.Tanh()
        )

    def forward(self, img, mask):
        x = img

        # layer 1
        x1 = self.dw_conv01(x)
        # layer 2
        x2 = self.dw_conv02(x1)
        # layer 3
        x3 = self.dw_conv03(x2)
        # layer 4
        x4 = self.dw_conv04(x3)
        # layer 5
        x5 = self.dw_conv05(x4)
        # layer 6
        x6 = self.dw_conv06(x5)

        # attention
        x5 = self.at_conv05(x5, x6, mask)
        x4 = self.at_conv04(x4, x5, mask)
        x3 = self.at_conv03(x3, x4, mask)
        x2 = self.at_conv02(x2, x3, mask)
        x1 = self.at_conv01(x1, x2, mask)

        # decoder
        # decode layer 5
        up_x5 = self.up_conv05(F.interpolate(x6, scale_factor=2, mode='bilinear', align_corners=True))
        # decode layer 4
        x5 = torch.cat([up_x5, x5], dim=1)
        up_x4 = self.up_conv04(F.interpolate(x5, scale_factor=2, mode='bilinear', align_corners=True))
        # decode layer 3
        x4 = torch.cat([up_x4, x4], dim=1)
        up_x3 = self.up_conv03(F.interpolate(x4, scale_factor=2, mode='bilinear', align_corners=True))
        # decode layer 2
        x3 = torch.cat([up_x3, x3], dim=1)
        up_x2 = self.up_conv02(F.interpolate(x3, scale_factor=2, mode='bilinear', align_corners=True))
        # decode layer 1
        x2 = torch.cat([up_x2, x2], dim=1)
        up_x1 = self.up_conv01(F.interpolate(x2, scale_factor=2, mode='bilinear', align_corners=True))
        # decode layer 0
        x1 = torch.cat([up_x1, x1], dim=1)
        output = self.decoder(F.interpolate(x1, scale_factor=2, mode='bilinear', align_corners=True))

        return output


class AttentionConv(nn.Module):
    def __init__(self, input_channels=128, output_channels=64, groups=4, ksize=3, stride=1, rate=2, softmax_scale=10., fuse=True, rates=[1, 2, 4, 8]):
        super(AttentionConv, self).__init__()
        self.ksize = ksize
        self.stride = stride
        self.rate = rate
        self.softmax_scale = softmax_scale
        self.groups = groups
        self.fuse = fuse
        if self.fuse:
            for i in range(groups):
                self.__setattr__('conv{}'.format(str(i).zfill(2)), nn.Sequential(nn.Conv2d(input_channels, output_channels // groups, kernel_size=3, dilation=rates[i], padding=rates[i]), nn.ReLU(inplace=True)))

    def forward(self, x1, x2, mask=None):
        x1s = list(x1.size())
        x2s = list(x2.size())

        kernel = 2 * self.rate
        raw_w = extract_patches(x1, kernel=kernel, stride=self.rate * self.stride)
        raw_w = raw_w.contiguous().view(x1s[0], -1, x1s[1], kernel, kernel)  # B*HW*C*K*K
        raw_w_groups = torch.split(raw_w, 1, dim=0)

        f_groups = torch.split(x2, 1, dim=0)
        w = extract_patches(x2, kernel=self.ksize, stride=self.stride)
        w = w.contiguous().view(x2s[0], -1, x2s[1], self.ksize, self.ksize)  # B*HW*C*K*K
        w_groups = torch.split(w, 1, dim=0)

        if mask is not None:
            mask = F.interpolate(mask, size=x2s[2:4], mode='bilinear', align_corners=True)

        m = extract_patches(mask, kernel=self.ksize, stride=self.stride)
        m = m.contiguous().view(x2s[0], -1, 1, self.ksize, self.ksize)  # B*HW*1*K*K
        m = m.mean([2, 3, 4]).unsqueeze(-1).unsqueeze(-1)
        mm = m.eq(0.).float()  # (B, HW, 1, 1)
        mm_groups = torch.split(mm, 1, dim=0)

        y = []
        scale = self.softmax_scale
        padding = 0 if self.ksize == 1 else 1
        for xi, wi, raw_wi, mi in zip(f_groups, w_groups, raw_w_groups, mm_groups):
            wi = wi[0]
            escape_NaN = torch.FloatTensor([1e-4]).to(wi)
            wi_normed = wi / torch.max(torch.sqrt((wi * wi).sum([1, 2, 3], keepdim=True)), escape_NaN)
            yi = F.conv2d(xi, wi_normed, stride=1, padding=padding)
            yi = yi.contiguous().view(1, x2s[2] // self.stride * x2s[3] // self.stride, x2s[2], x2s[3])

            yi = yi * mi
            yi = F.softmax(yi * scale, dim=1)
            yi = yi * mi
            yi = yi.clamp(min=1e-8)

            wi_center = raw_wi[0]
            yi = F.conv_transpose2d(yi, wi_center, stride=self.rate, padding=1) / 4.
            y.append(yi)
        y = torch.cat(y, dim=0)
        y.contiguous().view(x1s)
        if self.fuse:
            tmp = []
            for i in range(self.groups):
                tmp.append(self.__getattr__('conv{}'.format(str(i).zfill(2)))(y))
            y = torch.cat(tmp, dim=1)

        return y


# extract patches
def extract_patches(x, kernel=3, stride=1):
    if kernel != 1:
        x = nn.ZeroPad2d(1)(x)
    x = x.permute(0, 2, 3, 1)
    all_patches = x.unfold(1, kernel, stride).unfold(2, kernel, stride)
    return all_patches
