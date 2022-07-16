clc
fun = @(x,y) exp((2.*(x.^2+y.^2+2*x+2)));
%函数
ymax = @(x) sqrt(x);
ymin = @(x) 1./(4*x);
xmin = (0.5)^(4/3);
%范围
a=linspace(2,10,1000);
%划定分割区段
q=ones(1,1000);
%初始化
for i = 1:1000
q(i) = integral2(fun,xmin,a(i),ymin,ymax);
end
%赋值
plot(a,q)
