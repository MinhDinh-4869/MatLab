clc
A=[1 2 3; 3 -1 5; 4 1 -14];
b=[4; 2; 2];
C=[A, b];
fprintf('The rank of A is: %d \n', rank(A))
fprintf('The rank of C is: %d \n', rank(C))
if rank(A)==rank(C)
    fprintf('This is a fucking consistent system')
else
    fprintf('CAC')
end
Result = rref(C)
for i=1:3
    [x, k] = max(Result(i,1:3));
    if k == 1    
    fprintf('a is a leading variable, ')
    fprintf('a= %f \n', Result(i,4))
    end
    if k == 2
        fprintf('b is a leading variable, ')
        fprintf('b= %f\n', Result(i,4))
    end
    if k == 3
        fprintf('c is a leading variable, ')
        fprintf('c= %f \n', Result(i,4))
    end
end


    
    