clear;clc;
[filename, path] = uigetfile('*.*');
fullpath = fullfile(path, filename);
I=imread(fullpath);
subplot(1,2,1);
imshow(I);
xlabel('原图');
%% 初始化
[r,c,l]=size(I);
I=double(I);
R=floor(r/8);
C=floor(c/8);
threshold=1;
M=I;
%% haar小波编码
for q=1:l
    for i=1:R
        for j=1:C
            M((i-1)*8+1:i*8,(j-1)*8+1:j*8,q)=haar(I((i-1)*8+1:i*8,(j-1)*8+1:j*8,q));
        end
    end
end
M(abs(M)<threshold)=0;
% 存储
M=int16(M);
save('data.mat',"M");
%% Huffman二进制编码
[r,c,l]=size(M);
SIG = M(:);
k = unique(SIG);
P = zeros(1, length(k(:)));
for i = 1 : length(k(:))
    P(1, i) = length(find(SIG==k(i))) / length(SIG(:));
end
dict=huffmandict(k,P);
enco=huffmanenco(SIG,dict);
save("huffen.mat","enco");
%% 解码
load('huffen.mat',"enco");
deco=huffmandeco(enco,dict);
Ide = reshape(deco, [r,c,l]);
Ide=double(Ide);
B=zeros(r,c,l);
for q=1:l
    for i=1:R
        for j=1:C
            B((i-1)*8+1:i*8,(j-1)*8+1:j*8,q)=RETURN(Ide((i-1)*8+1:i*8,(j-1)*8+1:j*8,q));
        end
    end
end
B=uint8(B);
subplot(1,2,2);
imshow(B);
xlabel('解码图');
efficiency=size(enco)/size(deco)/8;