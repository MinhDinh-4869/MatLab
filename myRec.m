function z = myRec(n);
if n==1
    z=1;
else
    z= n*myRec(n-1);
end