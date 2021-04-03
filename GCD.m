function f = GCD(a,b)
if mod(a,b)==0
    f=b;
else
    f=GCD(b,mod(a,b));
end

