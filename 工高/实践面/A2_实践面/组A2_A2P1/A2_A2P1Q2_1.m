clc;

M = readmatrix('Time_series.csv');  %读取数据
res = zeros(128,128);   %预生成128*128的答案矩阵
for i = 1 : 128
    for j = 1 : 128
        res(i, j) = corr(M(i, :)', M(j, :)');   %用corr函数计算第i行和第j行的相关系数，并填入答案矩阵内
    end
end
writematrix(res, 'Answer1.csv') %输出答案矩阵