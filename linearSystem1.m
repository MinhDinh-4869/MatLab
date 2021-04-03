function x = linearSystem1(A,b)
varNum=length(A);
r1=rank(A);
r2=rank([A,b]);
if r1==r2&r1==varNum
    fprintf('This system has a unique solution:\n')
    x=A\b;
elseif r1 == r2&r1<length(A)
    lead=[];
    g=1;
    k=1;
    fprintf('This system has infinitely many solutions:\n')
    result=rref([A,b]);
    row=varNum;
    col=varNum;
    for i=1:row
        for j=1:col
            if result(i,j)==1
                lead(j)=j;
                break
            else
                nolead=i;
            end
        end
    end
    for i=1:2
        if result(i,row+1)<0
            fprintf('x_%d*%g - %g\n', nolead, result(i,row)*-1, result(i, row+1)*-1)
        elseif result(i,row+1)>=0
            fprintf('x_%d*%g + %g\n', nolead, result(i,row)*-1, result(i, row+1))
        end
    end
    fprintf('x_%d\n',nolead)
    fprintf('leading variable(s):')
    sym('x_%d', [length(lead)  1])
    fprintf('free variable: \nx_%d\n', nolead)
else
    fprintf('no solution')
end
   