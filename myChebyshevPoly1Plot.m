x=0:0.01:5;
for i=1:6
    plot(x, myChebyshevPoly1(i, x))
    axis([0, 5, -10, 10])
    grid on
    hold on
end