clc
x=0;
while (exp(x)-(1 + x + (x^2)/2 + (x^3)/6)) < (1/100)
    x=x+0.001;
end
disp(x)

   