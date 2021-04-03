x=[1 3 2 5 4 6 8 0];
for i=1:length(x)-1
    for j=i+1:length(x)
        if x(i)>x(j)
            a=x(i);
            x(i)=x(j);
            x(j)=a;
        end
    end
end
x