clc
a=input('a: ');
b=input('b: ');
s=[1 0];
t=[0 1];
r= mod(a,b); %r2
q=(a-r)/b;
i=1;
GCD(a,b);
if r==0
    fprintf('%d %d: \n',0, 0)
elseif r==GCD(a,b)
    fprintf('%d %d: ', 1, -(a-r)/b)
else
    while r~=GCD(a,b)
  s(i+2)=s(i)-s(i+1)*q(i); %s2 t2 q1 r3
  t(i+2)=t(i)-t(i+1)*q(i);
  q(i+1)=((s(i)-s(i+2))*a + (t(i)-t(i+2))*b)/(s(i+1)*a + t(i+1)*b);
  r=(s(i+1)-s(i+2)*q(i+2))*a + (t(i+1)-t(i+2)*q(i+2))*b;
  %s=s(2:length(s));
  %t=t(2:length(t));
  i=i+1;
    end
    fprintf('%d\n', s(length(s)))
    fprintf('%d\n', t(length(t)))
end
