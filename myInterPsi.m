function G = myInterPsi(n)
%This function is to compute the approximated result of w
G(1)=sqrt(2);
for i=2:n
 G(i)=sqrt(2-G(i-1));
end
format short
G=G(n);