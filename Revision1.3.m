x=-50:0.5:50;
y=-20:0.5:20;
[X, Y] = meshgrid(x,y);
Z = X.^2 -2.*X.*Y -4.*(Y.^2);
mesh(X,Y,Z)
xlabel('x'), ylabel('y'), zlabel('z')
legend('Revision 1 graph')
grid on