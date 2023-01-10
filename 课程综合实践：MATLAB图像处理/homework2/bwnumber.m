function [A]=bwnumber(I)
[r,c]=size(I);
A=zeros(2,1);
for i=1:r
    for j=1:c
        A(I(i,j)+1)=A(I(i,j)+1)+1;
    end
end
end
