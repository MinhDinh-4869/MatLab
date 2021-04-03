clc
x=-2:0.01:1;
y= @(x) -x + 3;
x1=1.01:0.01:4;
z=@(x1) 2.*sqrt(x1);
x2=4.01:0.01:6;
t=@(x2) x2.^3 - 2.*x2;
plot(x,y(x))
hold on
plot(x1,z(x1))
hold on
plot(x2,t(x2))
grid on