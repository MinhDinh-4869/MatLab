function change = myNewChange(cost, paid)
A=[100, 50, 20, 10, 5, 1, 0.25, 0.1, 0.05, 0.01];
diff=paid-cost;
k=1;
for i=1:length(A)
    while diff >= A(i)
        changeMoney(k)=A(i);
        k=k+1;
        diff=diff-A(i);
    end
end
change = changeMoney;