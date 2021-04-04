function [f] = factorical(n)
if n==0
    f=1;
else
    f=factorical(n-1)*n;
end