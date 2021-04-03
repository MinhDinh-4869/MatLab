function x = linearSystem(A,b)
r1=rank(A);
r2=rank([A,b]);
if r1==r2&&r1==length(A)
    fprintf('This system has a unique solution:\n')
    x=A\b;
elseif r1 == r2&r1<length(A)
    fprintf('This system has infinitely many solutions:\n')
    result=rref([A,b]);
    row=length(A);
    for i=1:row-1
        if result(i,length(result))<0
            fprintf('x_%d*%g - %g \n',row, result(i,row)*-1, result(i,row+1).*-1)
        elseif result(i,length(result))>=0
            fprintf('x_%d*%g + %g \n',row, result(i,row)*-1, result(i,row+1))
        end
    end
    fprintf('x_%d\n',row)
    fprintf('leading variable(s):')
    sym('x_%d', [(row-1) 1])
    fprintf('free variable: \nx_%d\n', row)
else
    fprintf('no solution')
end
   