function [M]=change_to_bw(I)
G=change_to_grey(I);
[r,c]=size(G);
level=0.5;
M=zeros(r,c);
M=G>level*255;
end
