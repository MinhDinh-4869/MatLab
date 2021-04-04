clc
A= @(x) (6*1*2 - 1.5*1^2.*cotd(x) + (3*sqrt(3))./(2.*sind(x)));
x=1:0.5:180;
plot(x,A(x),'r')
hold on
plot(fminbnd(A, 0, 180), min(A(x)), 'rx')
grid on
fminbnd(A, 0, 180)
min(A(x))