clc
A=[3 5 -4; -8 -1 33; -17 6 -9];
for i=1:3
    for j=1:3
        if A(j,i) >=1
            B(j,i)=A(j,i);
        else
            B(j,i)=A(j,i)+20;
        end
    end
end
B