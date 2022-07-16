clc
syms x(t) y(t) z(t);
t0=0;
tfinal=linspace(0.1,50,1000);
p0=[0;0;0];
%划定分割区段初始化
%aviobj =VideoWriter('test.avi');
%open(aviobj);
for i=1:length(tfinal)
    [t,p] = ode45(@init,[t0 tfinal(i)],[20 4 4]);
    plot3(p(:,1),p(:,2),p(:,3));
    view(-100-i,50)
    F(i) = getframe();
    %writeVideo(aviobj,F(i));
end
%得到每一帧的效果
movie(F,0,100)
%close(aviobj)
function dpdt = init(t,p)
dpdt = [10.*(p(2)-p(1));
    p(1).*(28-p(3))-p(2);
    p(1).*p(2)-8/3.*p(3)];
end