f = @(x) 0.1 + exp((-0.2).*x).*sin(x.^2);
rf= @(x) -(0.1 + exp((-0.2).*x).*sin(x.^2))
fplot(f, [-1 3], 'r')
grid on
fzero(f, 2)
fzero(f, 2.5)
min=fminbnd(f, -1, 3)
max=fminbnd(rf, -1, 3)