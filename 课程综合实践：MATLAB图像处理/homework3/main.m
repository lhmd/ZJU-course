clear;clc;
I=imread("input.jpg");
d=input('请输入缩放倍数：');
J=zoom(I,d);
subplot(1,2,1);imshow(I);
xlabel('原图像');
subplot(1,2,2);imshow(J);
xlabel('缩放后');
imwrite(J,'output.jpg');