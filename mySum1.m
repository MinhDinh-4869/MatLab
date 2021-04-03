function S = mySum1(a)
if length(a)==1
    S=a;
else
    S=a(length(a))+mySum(a(1:length(a)-1));
end