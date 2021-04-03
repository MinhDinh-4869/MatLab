function G = myRecPsi(n)
if n==1
  G = sqrt(2);
else
    G=sqrt(2-myRecPsi(n-1));    
end