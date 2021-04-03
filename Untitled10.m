% Plot to locate zeros
x = [-5:0.01:5];
y = quadratic_fun(x);
plot(x,y), grid on
% Use fzero to find zeros
fzero(@quadratic_fun, -2)
fzero(@quadratic_fun, 2)