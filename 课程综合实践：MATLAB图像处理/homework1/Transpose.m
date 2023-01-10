function [B]=Transpose(A)
[r,c]=size(A);
B=zeros(c,r);
for i=1:r
    for j=1:c
        B(j,i)=A(i,j);
    end
end