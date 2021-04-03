x=0:0.01:3;
plot(x, tensionForce(x))
hold on
grid on
ymin=min(tensionForce(x))
xmin=fminbnd(@tensionForce, 0, 3)
plot(xmin, ymin, 'rx')