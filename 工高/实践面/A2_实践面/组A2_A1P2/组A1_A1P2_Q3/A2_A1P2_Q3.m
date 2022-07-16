clear all
clc
%init
total=zeros(10,1200);%保存总花销
s=zeros(10);%初始化每一段T占比
m=zeros(10);%每次检修的花销
c1=15;c2=1500;l=300;
%正态函数
syms x ;
y=@(x) normpdf(x,600,196);
S=integral(y,1,1200);%总面积
for T=1:1200
    for k=1:10
        if k*T<1200
            for i=1:k
                s(i)=(integral(y,(i-1)*T,i*T))/S;%求出所有s(i)
            end
            m=zeros(10);%将上一次的m覆盖掉
            m(1)=s(1);
            for i=2:k
                m(i) = s(i);
                for j=1:i-1
                    m(i)=m(j)*s(i-j);%循环求m(i)
                end
            end
            total(k,T)=(sum(m,"all")*(c1+3*c2+l)+c2*(1-m(k)))/(k*T);%求出矩阵中对应(k,T)位置的值
        end
    end
end
%求矩阵中非0最小值
min=999999;
for T=1:1200
    for k=1:10
        if total(k,T)==0
        else %total(k,T)不等于0
            if min>total(k,T)
                min=total(k,T);
                p=k;
                q=T;
            end
        end
    end
end
p
q