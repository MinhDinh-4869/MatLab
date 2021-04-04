clc
e=input('e:');
r=[];
i=1;
while e~=0
    r(i)=mod(e,2);
    e=(e-r(i))/2;
    i=i+1;
end
for i=1:length(r)
    bi(i)=r(length(r)-i+1);
end
bi