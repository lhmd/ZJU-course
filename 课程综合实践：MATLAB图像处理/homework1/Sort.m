function [S]=Sort(A)
[r,c]=size(A);
S=zeros(r*c,1);
for i=1:r
    for j=1:c
        S((j-1)*r+i)=A(i,j);
    end
end
%冒泡排序
for i=1:(r*c-1)
    for j=1:(r*c-i)
        if S(j)>S(j+1)
            tem=S(j);
            S(j)=S(j+1);
            S(j+1)=tem;
        end
    end
end
