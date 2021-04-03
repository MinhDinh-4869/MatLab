function F = myIterFib(n)
a=[1 1 1];
% Iterative method for computing Fibonacci number
F(1) = 1;
F(2) = 1;
F(3) = 1;
for k = 4:n
F(k) = F(k-1) + F(k-2) + F(k-3);
a(k)=F(k)
end
F = F(n);
