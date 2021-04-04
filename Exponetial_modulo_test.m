clc
a=input('a: ');
e=input('e: ');
n=input('n: ');
i=1;
while e~=1
    r(i)=mod(e,2);
    e=(e-r(i))/2;
    i=i+1;
end
for i=1:length(r)
    binary(i)=r(length(r)+1-i);
end
r
binary
m=a;
for i=1:length(binary)
    if binary(i)==1
        m=mod(m*m*a,n);
    elseif binary(i)==0
        m=mod(m*m,n);
    end
end
m