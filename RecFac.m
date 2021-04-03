function z = RecFac(n)
if n==1
    z=1;
else
    z=n*RecFac(n-1);
end