function f = sort(u)
if length(u)==1
    f=u;
else
    pivot=u(1);
    less=[];
    large=[];
    same=[];
    for i=1:length(u)
        if pivot < u(i)
            large=[large, u(i)];
        elseif pivot > u(i)
            less=[less, u(i)];
        else
            same=[same, u(i)];
        end
    end
    f=[sort(less), same, sort(large)];
end
        