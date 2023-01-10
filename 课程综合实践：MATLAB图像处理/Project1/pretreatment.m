% 该文件读取文件夹下所有文件进行预处理
clear;clc;
imgpath=input('输入图片文件夹路径：','s');
imgdir=dir(imgpath);
%% 新建处理后图片保存的位置
mkdir('treat1');
mkdir('treat2');
%% 遍历所有图片进行处理和保存
for i=1:length(imgdir)
    if (isequal(imgdir(i).name,'.')||isequal(imgdir(i).name,'..')||~imgdir(i).isdir)
        continue;
    end
    imgdir1 = dir([imgpath '\' imgdir(i).name]);
    for j=1:length(imgdir1)
        if (isequal(imgdir1(j).name,'.')||isequal(imgdir1(j).name,'..')||~imgdir1(j).isdir)
            continue;
        end
        imgdir2=dir([imgpath '\' imgdir(i).name '\' imgdir1(j).name '\*.gif']);
        for k=1:length(imgdir2)
            img=imread([imgpath '\' imgdir(i).name '\' imgdir1(j).name '\' imgdir2(k).name]);
            filenm=[imgdir(i).name '-' imgdir1(j).name '-' imgdir2(k).name];
            [BW4,BW7]=pretreatfunction(img);
            % 保存
            name=['treat1/' filenm '.png'];
            imwrite(BW4,name);
            name=['treat2/' filenm '.png'];
            imwrite(BW7,name);
            %imshow(BW4);
            %break;
        end
        %break;
    end
    %break;
end