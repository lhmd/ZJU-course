function s=Max(A)
s=A(1,1);
[r,c]=size(A);
for i=1:r
    for j=1:c
        if s<A(i,j)
            s=A(i,j);
        end
    end
end