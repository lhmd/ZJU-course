clear
clc
syms x(t) y(t) z(t);
t0=0;
tfinal=50;
r=linspace(2,10,6);
p0=[0;0;0];
%划定分割区段初始化
for i=1:length(r)
    [t,p] = ode45(@init,[t0 tfinal],[r(i) 4 4]);
    figure(i);
    plot3(p(:,1),p(:,2),p(:,3))
end

function dpdt = init(t,p)
dpdt = [10.*(p(2)-p(1));
    p(1).*(28-p(3))-p(2);
    p(1).*p(2)-8/3.*p(3)];
end