clc
a=input('a:');
e=input('e:');
n=input('n:');
r=[];
i=1;
e1=e;
while e~=0
    r(i)=mod(e,2);
    e=(e-r(i))/2;
    i=i+1;
end
for i=1:length(r)
    bi(i)=r(length(r)-i+1);
end
m=1;
for i=1:length(bi)
    if bi(i)==1
        m=mod(m*m*a,n); %for each loop: x=x^2 * x if bit value is 1
    elseif bi(i)==0     %               x=x^2     if bit value is 0
        m=mod(m*m,n);
    end
end
fprintf('%d^%d mod %d = %d\n', a, e1, n, m)