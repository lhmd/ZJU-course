clear;
clc;
%% 创建矩阵
m=input('print m=');
n=input('print n=');
A=rand(m,n);
%% 转置矩阵
B=Transpose(A);
%% 求最小值
minimal=Min(A);
%% 求最大值
maximal=Max(A);
%% 排序
S=Sort(A);