clc
A = [5 5.5 6.5 6 6.25; 40 43 37 50 45; 1000 1100 1000 1200 1100]
Cost=A(1,:).*A(2,:) %Cost for each worker
Salary=sum(Cost) %Total salary paid
Output=sum(A(3,:)) %Number of widgets produced
Average=Salary./Output
Eff=A(3,:)./A(2,:)
[x,k] = max(Eff);
[u,v] = min(Eff); %
fprintf('The most efficient worker is worker %d, Efficiency %f (Widgets per hour) \n', k, x)
fprintf('The least efficient worker is worker %d, Efficiency %f (Widgets per hour) \n', v, u)
%10,11: print out most and least efficient worker


