clc
x=input('Please enter a string: ', 's');
y=input('list of forbidden letters: ', 's');
k=1;
for j=1:length(y)
    for i=1:length(x)
       if x(i) == y(j)
          x(i)=0;                  %u(k)= x(i);  %k=k+1;                            %x(i)=0;
        end
    end
end
for i=1:length(x)
    if x(i)~=0
        Str(k)=x(i);
        k=k+1;
    end
end
fprintf('New string: %s\n', Str)

