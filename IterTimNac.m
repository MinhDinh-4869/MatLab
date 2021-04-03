% n<i<2n ==> t(i)=t(n) 
function t = IterTimNac(n)
p1=1; %set the base case: t(1)= p1 + p2= 2
p2=1;
t=2;
i=1;  
while i <= n
    i=i*2;
    t = p1 + p2
    p2 = p1;
    p1 = t;
end