% 该文件对书法字进行相似度搜索
clear;clc;
%% 在calligraphy中读取想要进行比较的图片并进行预处理
[filename, path] = uigetfile('*.*');
fullpath = fullfile(path, filename);
img=imread(fullpath);
[bw1,bw2]=pretreatfunction(img);
%% 下面两种算法基于treat1文件 
% 第一种比较路线——二值图检测：重叠度（取前面的）
% 第二种比较路线——边缘检测算法
imgdir=dir("treat1");
val1=zeros(length(imgdir),1);
val2=zeros(length(imgdir),1);
val3=zeros(length(imgdir),1);
val4=zeros(length(imgdir),1);
val5=zeros(length(imgdir),1);
name=zeros(length(imgdir),1);
name=string(name);
for i=1:length(imgdir)
    if (isequal(imgdir(i).name,'.')||isequal(imgdir(i).name,'..'))
        continue;
    end
    BW=imread(['treat1/' imgdir(i).name]);
    val1(i)=method1_overlap(BW,bw1);
    val2(i)=method2_edgedetect(BW,bw1);
    name(i)=imgdir(i).name;
end
%% 下面算法基于treat2文件s
% 第三种比较路线——自定义向量:格子向量、结构相似、横切竖切
imgdir=dir("treat2");
for i=1:length(imgdir)
    if (isequal(imgdir(i).name,'.')||isequal(imgdir(i).name,'..'))
        continue;
    end
    BW=imread(['treat2\' imgdir(i).name]);
    [val3(i),val4(i),val5(i)]=method3_DIYvector(BW,bw2);
end
%% 对上述结果进行加权形成最终向量
val=val1+0.4*val2+val3+0.3*val4+0.3*val5;
%% 排序输出
% 排序
[val,I] = sort(val,'descend');
Nsorted = name(I);
subplot(3,7,1);
imshow(img);
xlabel('原图');
path=extractBefore(path,"calligraphy");
i=1;cnt=0;
while i<21
    % 判断是否为干扰图像
    st=strcat('treat1\',Nsorted(i+cnt));
    imga=imread(st);
    [L,n]=bwlabel(imga,4);
    if n>50||isnan(val(i+cnt))
        cnt=cnt+1;
        continue;
    end
    % 若不是干扰图像则输出
    Name=Nsorted(i+cnt);
    Name=char(Name);
    for j=1:length(Name)
        if Name(j)=='-'
            Name(j)='\';
        end
    end
    subplot(3,7,i+1);
    Name=extractBefore(Name,".png");
    st=strcat(path,"calligraphy\",Name);
    imga=imread(st);
    imshow(imga);
    xlabel(extractBefore(Name,'\'));
    i=i+1;
end