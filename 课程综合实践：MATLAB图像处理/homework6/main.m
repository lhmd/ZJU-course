clear;clc;
%% 读取图片
[filename, path] = uigetfile('*.*');
fullpath = fullfile(path, filename);
M=imread(fullpath);
subplot(2, 2, 1);
imshow(M);
title('原始图像');
%% 最长直线
I=rgb2gray(M);
[BW, thresh] = edge(I, 'canny');
subplot(2, 2, 2);
imshow(BW);
title('边缘检测结果');
[H,theta,rho]=hough(BW);
peaks=houghpeaks(H,3);
lines=houghlines(BW,theta,rho,peaks);
subplot(2,2,3);
imshow(I);
hold on;
title('最长3条直线');
for k=1:3
    L=[lines(k).point1; lines(k).point2];
    plot(L(:,1),L(:,2),'LineWidth',2);
end
%% 最大面积
bw=imbinarize(I);
[B,L]=bwboundaries(bw, 4);
tbl = tabulate(L(:));
tbl = sortrows(tbl,2);
subplot(2, 2, 4);
imshow(M);
hold on;
title('最大3个区域');
cnt=0;
for k=1:3
    if tbl(length(tbl)-k-cnt,1)==0
        cnt=cnt+1;
        continue;
    end
    boun=B{tbl(length(tbl)-k-cnt,1)};
    plot(boun(:,2),boun(:,1),'LineWidth',2,'color','green');
end