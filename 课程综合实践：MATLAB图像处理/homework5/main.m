clear;clc;
%% 读取图片
[filename, path] = uigetfile('*.*');
fullpath = fullfile(path, filename);
I=imread(fullpath);
subplot(2, 2, 1);
imshow(I);
title('原始图像');
%% 自定义一个滤波器
% 随机创建一个滤波器
filter = fspecial('laplacian');
% 预设滤波器
%filter=[0,-1,0;-1,4,-1;0,-1,0;];
%% 拉普拉斯变换
[r,c,l]=size(I);
[m,n]=size(filter);
% 判断滤波器是否合适
if mod(m,2)*mod(n,2)==0
    print('滤波器长宽为偶数！');
    return
end
% 变换
botm=-floor(m/2);
botn=-floor(n/2);
lap=zeros(r,c,l);
I=double(I);
for i=1:r
    for j=1:c
        for k=botm:m/2
            for p=botn:n/2
                a=i+k;b=j+p;
                a(a<1)=1;a(a>r)=r;
                b(b<1)=1;b(b>c)=c;
                lap(i,j,:)=lap(i,j,:)+double(filter(k+ceil(m/2),p+ceil(n/2)))*I(a,b);
            end
        end
    end
end
subplot(2,2,2);
imshow(lap);
title('拉普拉斯图像');
%% 输出图像
las=lap+double(I);
subplot(2,2,3);
imshow(lap,[]);
title('归约化的拉普拉斯图像');
lap=uint8(lap);
las=uint8(las);
las(las<0)=0;
las(las>255)=255;
subplot(2,2,4);
imshow(las);
title('增强后的图像');
imwrite(las,"las.jpg");