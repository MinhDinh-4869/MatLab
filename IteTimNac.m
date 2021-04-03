function t = IteTimNac(n)
b=n;
a=n;
x=0;
y=0;
A=[n];
k=0;
while n >= 1
k=k+1
A(k+1,:)=A(k,:).*[1/2 1/4]
end