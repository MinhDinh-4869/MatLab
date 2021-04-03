clc
A=[1 0 0; 0 1 0; 0 0 0];
for i=1:3
    for j=1:3
        if A(i,j)==1
            fprintf('lead x_%d\n', j)
            break
        end
    end
            if A(i,1:3)==0
            fprintf('not lead x_%d', i)
        end
end