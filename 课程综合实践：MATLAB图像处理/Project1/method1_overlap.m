function val=method1_overlap(I,BW)
dert=xor(BW,I);
[r,c]=size(BW);
val=sum(sum(dert))/r/c;
val=1-val;
end
