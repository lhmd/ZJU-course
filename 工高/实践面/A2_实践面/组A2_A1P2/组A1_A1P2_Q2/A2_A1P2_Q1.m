XLS=readmatrix("1_3_1");     %读入附件表格
%依次读入数据，C表示碳元素，以此类推
C=XLS(:,2);Si=XLS(:,3);Mn=XLS(:,4);P=XLS(:,5);S=XLS(:,6);Ni=XLS(:,7);
Cr=XLS(:,8);Mo=XLS(:,9);Cu=XLS(:,10);Al=XLS(:,11);N=XLS(:,12);
%依次读入温度，屈服极限，抗拉强度，延伸率和断面收缩率
Tem=XLS(:,13);Pstress=XLS(:,14);Tstrength=XLS(:,15);El=XLS(:,16);RiA=XLS(:,17);
Varies=[ones(size(C)) C Si Mn P S Ni Cr Mo Cu Al N Tem Tem.*Tem];   %自变量矩阵
%用regress()函数进行多元回归，将参数存放在b（i）向量中
[b1,bint1,r1,rint1,stats1]=regress(Pstress,Varies);  
[b2,bint2,r2,rint2,stats2]=regress(Tstrength,Varies);
[b3,bint3,r3,rint3,stats3]=regress(El,Varies);
[b4,bint4,r4,rint4,stats4]=regress(RiA,Varies);

