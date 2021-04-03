function y =myChebyshevPoly1(n,x)
y=[];
if n==0
    y=1.^x;
elseif n==1
    y=x;
else
    y=2.*x.*myChebyshevPoly1(n-1,x)-myChebyshevPoly1(n-2,x);
end
plot(x,y);
grid on


    
