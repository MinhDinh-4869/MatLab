y = fuck(x);
x = 0:1:50;
plot(x,y)
grid on
fminbnd(@fuck, 0, 50)