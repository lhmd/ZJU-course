function [A]=greynumber(I)
[r,c]=size(I);
A=zeros(256,1);
for i=1:r
    for j=1:c
        A(I(i,j)+1)=A(I(i,j)+1)+1;
    end
end
end
