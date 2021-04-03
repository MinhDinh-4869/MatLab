clc
n=input('n: ');
p=2;
t=2;
%count=0;
for i=3:n
    count=0;
    for j=2:(i-1)
        if mod(i,j)==0
            count=count+1;
        end
    end
    if count==0
        p(t)=i;
        t=t+1;
    end
    %count=0;
end
c=0;
power=[];
for i=1:length(p)
    while mod(n,p(i))==0
        c=c+1;
        n=n/p(i);
    end
    power(i)=c;
    c=0;
end
%power(power>0)
%p(power>0)
for i=1:length(p)
    if power(i)~=0
    fprintf('%d^%d.',p(i), power(i))
    end
end
if power(length(power))~=0
    fprintf('%d^%d\n', p(length(p)), power(length(p)))
        
        
    
        
    