clear;clc;
I=load("1.mat","-mat");
M=int16(I.M);
[r,c,l]=size(M);
for i=2:c
    M(:,i,:)=M(:,i,:)+M(:,i-1,:);
end
M=uint8(M);
imshow(M);