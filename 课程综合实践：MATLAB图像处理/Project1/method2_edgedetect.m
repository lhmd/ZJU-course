function val=method2_edgedetect(BW,I)
[r,~]=size(I);
BW2=edge(BW,'sobel');
I2=edge(I,'sobel');
vector1=zeros(16,16);
vector2=zeros(16,16);
wide=r/16;
for i=1:16
    for j=1:16
        vector1(i,j)=sum(sum(I2((i-1)*wide+1:i*wide,(j-1)*wide+1:j*wide)));
        vector2(i,j)=sum(sum(BW2((i-1)*wide+1:i*wide,(j-1)*wide+1:j*wide)));
    end
end
val=sum(sum(vector1.*vector2))/sqrt(sum(sum(vector1.*vector1)))/sqrt(sum(sum(vector2.*vector2)));
end
