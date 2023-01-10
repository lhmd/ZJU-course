clear;
clc;
%% 读入一张真彩图像
I=imread("RGB.jpg");
%% 转换灰度图像
Grey=change_to_grey(I);
imwrite(Grey,"change_to_grey.jpg");
figure('Name','change');
subplot(2,2,1);
imshow(Grey);
%% 统计灰度数目
Greynumber=greynumber(Grey);
subplot(2,2,2);
bar(0:255,Greynumber);
xlabel('像素值');
ylabel('数目');
%% 转换二值图像
Bw=change_to_bw(I);
subplot(2,2,3);
imshow(Bw);
imwrite(Bw,"change_to_bw.jpg");
%% 统计二值数目
Bwnumber=bwnumber(Bw);
subplot(2,2,4);
bar(0:1,Bwnumber);
xlabel('像素值');
ylabel('数目');