y = 4.*x.^3-260.*x.^2+4000.*x;
x = 0:1:50;
plot(x,y,'o')
grid on
fminbnd(@(x) (4.*x.^3-260.*x.^2+4000.*x) , 11, 15)