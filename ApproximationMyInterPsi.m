%This program is to compute the approximation n-th of P, EXAM5
%To call a function, in function file the result funtion_name(input) must
%give out the result we want. EX: although a(length(a)) give the right
%result but If we want to call G(n) so G(n) must = a(length(a)) ???
clc
n=input('Please type natural number n:');
P=1;
for i=1:n
   P=P*(1+myInterPsi(i))/2;
end
fprintf('Pn: %f', P)
