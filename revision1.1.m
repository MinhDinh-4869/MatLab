A = [1 2 3 4 5;5 5.5 6.5 6 6.25; 40 43 37 50 45; 1000 1100 1000 1200 1100];
Cost=A(2,:).*A(3,:)
Salary=sum(Cost)
Output=sum(A(4,:))
Average=Salary./Output
Eff=A(4,:)./A(3,:)
[x,k]= max((Eff)')


