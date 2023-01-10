% 该函数进行预处理操作
function [BW4,BW7]=pretreatfunction(img)
%% 转二值
imgsize=size(img);
dimension=numel(imgsize);
if dimension == 3
    img=rgb2gray(img);
end
BW = imbinarize(img);
%% 降噪
% 判断是否白底黑字
[r,c]=size(BW);
A=ones(r,c);
sumall=sum(sum(BW));
if sumall<r*c/2
    BW=A-BW;
end
BW=~BW;
BW = bwareaopen(BW,floor(r*c*0.01));
BW2=medfilt2(BW);
BW2=~BW2;
%% 切割图片
[r,c]=size(BW2);
% 获得图片上下左右边界
cosum=sum(BW2);
left=1;right=c;
up=1;down=r;
for i=1:c
    if (r-cosum(i))>0.05*r&&(r-cosum(i))<0.9*r
        left=i;
        break;
    end
end
for i=c:-1:1
    if (r-cosum(i))>0.05*r&&(r-cosum(i))<0.9*r
        right=i;
        break;
    end
end
rosum=sum(BW2,2);
for i=1:r
    if (c-rosum(i))>0.05*c&&(c-rosum(i))<0.9*c
        up=i;
        break;
    end
end
for i=r:-1:1
    if (c-rosum(i))>0.05*c&&(c-rosum(i))<0.9*c
        down=i;
        break;
    end
end
% 切割
BW3=imcrop(BW2,[left,up,right-left,down-up]);
%% 统一大小
BW4=imresize(BW3,[256 256]);
%% 结构化处理
BW5=~BW4;
BW6=bwmorph(BW5,'thin',inf);
BW7=~BW6;
end