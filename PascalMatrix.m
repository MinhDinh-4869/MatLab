clc
n=input('size: ')
a=zeros(n);
a(1,1)=1
for i=1:n
    for j=1:n
        if i==j|j==1
            a(i,j)=1
        elseif i < j
            a(i,j)=0
        else
            a(i,j)=a(i-1,j)+a(i-1,j-1)
        end
    end
end

