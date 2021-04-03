clc
n=input('Zn:');
a=input('a: ');
inverse=0;
if a>=n
    fprintf('ERROR!!!')
else
    for i=1:n-1
        if mod(a*i,n)==1
            inverse=i;
        end
    end
end
if inverse==0
    fprintf('NO INVERSE\n')
else
    fprintf('Inverse = %d\n', inverse)
end