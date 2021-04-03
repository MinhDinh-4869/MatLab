x=-2:0.1:2;
y=-2:0.1:2;
[X, Y]=meshgrid(x,y);
Z=X.*exp(-(X-Y.^2).^2-Y.^2)
mesh(X,Y,Z)
xlabel('x'), ylabel('y'), zlabel('z')
grid on
