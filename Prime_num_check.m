clc
n=input('n: ');
%check a number whether it is a prime number or not
count=0;
for i=2:n-1
    if mod(n,i)==0
        count=count+1;
    end
end
if count~=0
    fprintf('%d: \n', 0)
else
    fprintf('%d: \n', 1)
end

    