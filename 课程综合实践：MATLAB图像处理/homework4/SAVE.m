clear;clc;
I=imread("1.jpg");
[r,c,l]=size(I);
I=int16(I);
M=int16(zeros(r,c,l));
M(:,1,:)=int16(I(:,1,:));
for i=2:c
    M(:,i,:)=int16(I(:,i,:)-I(:,i-1,:));
end
save("1.mat","M",'-mat');