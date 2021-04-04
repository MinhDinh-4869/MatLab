function z = f(x,y)
a = sqrt(x.^2 + y.^2);
b = 5*log(y) ./ (x.^2 + 1).^5;
z = a + b;
