clc
syms y(x) p;
eqn = diff(y,x,2) == 2-y-p*x*diff(y,x);
%方程式
dsolve(eqn,x);