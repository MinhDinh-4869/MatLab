function S = mySum(a)
if length(a)==1
    S= a;
else
    x=a(length(a));
    a(length(a))=[];
    S=x+mySum(a);
end
        