clear 
clc
syms p q
jones = [cos(p)-((sin(q))^2)*(cos(p)-1),sin(2*q)*(cos(p)-1)/2,-cos(q)*sin(p);
    sin(2*q)*(cos(p)-1)/2,1-2*(sin(p/2)^2)*((sin(q))^2),-sin(q)*sin(p);
    cos(q)*sin(p),sin(q)*cos(p),cos(p)];
x=[1;0;0];
round=[sqrt(0.5);sqrt(0.5)*i;0];
long=[cos(q);sin(q);0];
angle=[-sin(q);cos(q);0];

y=jones*x;
r=jones*round;
l=jones*long;
a=jones*angle;

