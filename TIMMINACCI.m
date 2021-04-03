n=input('n: ')
cur=0;
p1=1;
p2=1;
i=1;
while i<=n
   cur=p1+p2;
   p2=p1;
   p1=cur;
   i=2*i;
end
cur