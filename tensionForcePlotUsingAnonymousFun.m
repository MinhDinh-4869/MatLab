T=@(x) 6000./(x.*sqrt(9 - x.^2));
x=0:0.01:3;
plot(x,T(x))
min(T(x))
fminbnd(T, 0, 3)