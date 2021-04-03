function [change] = myChange(cost, paid)
change=[];
if paid-cost>=100
    change=[100, myChange(cost, paid-100)];
elseif paid-cost>=50
    change=[50, myChange(cost, paid-50)];
elseif paid-cost>=20
    change=[20, myChange(cost, paid-20)];
elseif paid-cost>=10
    change=[10, myChange(cost, paid-10)];
elseif paid-cost>=5
    change=[5, myChange(cost, paid-5)];
elseif paid-cost>=1
    change=[1, myChange(cost, paid-1)];
elseif paid-cost>=0.25
    change=[0.25, myChange(cost, paid-0.25)];
elseif paid-cost>=0.1
    change=[0.1, myChange(cost, paid-0.1)];
elseif paid-cost>=0.05
    change=[0.05, myChange(cost, paid-0.05)];
elseif paid-cost>0& paid-cost<0.05
    change=[0.01, myChange(cost, paid-0.01)];    
end
