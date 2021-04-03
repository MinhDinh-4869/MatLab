function z = TimNac(n)
if n<1
    z=1;
else
    z=TimNac(n/2)+TimNac(n/4);
end