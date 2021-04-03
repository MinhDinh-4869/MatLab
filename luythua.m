function z = luythua(a,n)
if a==0
    fprintf('ERROR')
elseif a~=0&n==0
    z=1;
else
    z = a*luythua(a, n-1);
end