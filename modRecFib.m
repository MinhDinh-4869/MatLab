function F = modRecFib(n)
% A modification of the myRecFib function
if (n == 1) | (n == 2)
F = 1;
disp(F)
else
F = modRecFib(n-1) + modRecFib(n-2);
disp(F)
end