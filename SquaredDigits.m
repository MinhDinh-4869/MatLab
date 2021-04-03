clc
num=input('num: ');
A=[num 0];
k=2;
while isempty(find(A(k-1)==A(1:k-2)))==1
    s=num2str(A(k-1));
    sum=0;
    for i=1:length(s)
        sum=sum + str2double(s(i))^2;
    end
    A(k)=sum;
    A(k+1)=0;
    k=k+1;  
end
A(1:length(A)-1)