function [val1,val2,val3]=method3_DIYvector(BW,I)
% 分块
[r,~]=size(I);
vector1=zeros(16,16);
vector2=zeros(16,16);
wide=r/16;

% 第一个自定义向量相似度：每个格子中的颜色占比相似度
for i=1:16
    for j=1:16
        vector1(i,j)=sum(sum(I((i-1)*wide+1:i*wide,(j-1)*wide+1:j*wide)));
        vector2(i,j)=sum(sum(BW((i-1)*wide+1:i*wide,(j-1)*wide+1:j*wide)));
    end
end
val1=corr2(vector1,vector2);

% 第二个自定义向量相似度：该字是否为左右结构
I2=~I;
BW2=~BW;
isdichI = sum(sum(I2(:, 121:136)))<sum(I2(:))/32;
isdichBW = sum(sum(BW2(:, 121:136)))<sum(BW2(:))/32;
if isdichI==isdichBW
    val2=1;
else 
    val2=-1;
end

% 第三个自定义向量相似度：横纵切割对比相似度
vector3=zeros(16,1);
vector4=zeros(16,1);
for i=1:32
    vector3(i)=sum(sum(I((i-1)*8+1:i*8,:)));
    vector4(i)=sum(sum(BW((i-1)*8+1:i*8,:)));
end
val31=corr2(vector3,vector4);
for i=1:32
    vector3(i)=sum(sum(I(:,(i-1)*8+1:i*8)));
    vector4(i)=sum(sum(BW(:,(i-1)*8+1:i*8)));
end
val32=corr2(vector3,vector4);
val3=0.7*val31+0.3*val32;
end