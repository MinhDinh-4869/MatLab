%This program is to compute the approximation n-th of P, EXAM5
clc
n=input('Please type natural number n:');
P=1;
for i=1:n
   P=P*(1+myRecPsi(i))/2;
end
fprintf('Pn: %f', P)
