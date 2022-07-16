clear;clc;
%以下一段和question1相同
XLS=readmatrix("1_3_1.csv");     %读入附件表格
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
%以上全文和question1相同

XLS2=readmatrix("1_3_2.xlsx");
%依次读入数据，C表示碳元素，以此类推
%以名称+2表示第二张表格的数据
C2=XLS2(:,2);Si2=XLS2(:,3);Mn2=XLS2(:,4);P2=XLS2(:,5);S2=XLS2(:,6);Ni2=XLS2(:,7);
Cr2=XLS2(:,8);Mo2=XLS2(:,9);Cu2=XLS2(:,10);Al2=XLS2(:,11);N2=XLS2(:,12);Tem2=XLS2(:,13);
%预测屈服极限Pstress2,抗拉强度TStrength2,延伸率El2,断面收缩率RiA2
Pstress2=b1(1)+b1(2).*C2+b1(3).*Si2+b1(4).*Mn2+b1(5).*P2+b1(6).*S2+b1(7).*Ni2+b1(8).*Cr2+...
    b1(9).*Mo2+b1(10).*Cu2+b1(11).*Al2+b1(12).*N2+Tem2.*b1(13)+Tem2.*Tem2.*b1(14);
Tstrength2=b2(1)+b2(2).*C2+b2(3).*Si2+b2(4).*Mn2+b2(5).*P2+b2(6).*S2+b2(7).*Ni2+b2(8).*Cr2+...
    b2(9).*Mo2+b2(10).*Cu2+b2(11).*Al2+b2(12).*N2+Tem2.*b2(13)+Tem2.*Tem2.*b2(14);
El2=b3(1)+b3(2).*C2+b3(3).*Si2+b3(4).*Mn2+b3(5).*P2+b3(6).*S2+b3(7).*Ni2+b3(8).*Cr2+...
    b3(9).*Mo2+b3(10).*Cu2+b3(11).*Al2+b3(12).*N2+Tem2.*b3(13)+Tem2.*Tem2.*b3(14);
RiA2=b4(1)+b4(2).*C2+b4(3).*Si2+b4(4).*Mn2+b4(5).*P2+b4(6).*S2+b4(7).*Ni2+b4(8).*Cr2+...
    b4(9).*Mo2+b4(10).*Cu2+b4(11).*Al2+b4(12).*N2+Tem2.*b4(13)+Tem2.*Tem2.*b4(14);
%下面将所预测得到的屈服极限Pstress2,抗拉强度TStrength2,延伸率El2,断面收缩率RiA2填入表格2
writematrix(Pstress2,'1_3_2.xlsx','Range','N2:N31');
writematrix(Tstrength2,'1_3_2.xlsx','Range','O2:O31');
writematrix(El2,'1_3_2.xlsx','Range','P2:P31');
writematrix(RiA2,'1_3_2.xlsx','Range','Q2:Q31');