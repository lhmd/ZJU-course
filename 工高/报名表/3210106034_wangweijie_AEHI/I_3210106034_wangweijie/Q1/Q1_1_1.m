clc
fun = @(x,y) exp(1).^(2.*(x.^2+y.^2+2*x+2))
%函数
ymax = @(x) sqrt(x)
ymin = @(x) 1./(4*x)
xmin = (0.5)^(4/3)
%划定范围
q = integral2(fun,xmin,2,ymin,ymax)
%输出答案