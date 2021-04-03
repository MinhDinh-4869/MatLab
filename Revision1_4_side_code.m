A=[1 2 3; 3 -1 5; 4 1 -14];
b=[4; 2; 2];
AugM=[A, b];
Result = rref(AugM)
for i=1:3
    for j=1:3
        if Result(i,j) == 1
            sprintf('x%d is a leading variable',j)
        end
    end
   
end    