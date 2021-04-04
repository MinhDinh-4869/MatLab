clc
cost=input('cost: ');
paid=input('paid: ');
A=[100, 50, 20, 10, 5, 1, 0.25, 0.1, 0.05, 0.01];
change=paid-cost;
k=1;
for i=1:length(A)
    while change >= A(i)
        changeMoney(k)=A(i);
        k=k+1;
        change=change-A(i);
    end
end
changeMoney