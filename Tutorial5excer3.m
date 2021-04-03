clc
x = [-4 -1 0 2 10];
y = [-5 -2 2 5 9];

check=x>y;               %give out at which position x>y is true or false
indices =find(check);    %indices of those value
value=x(find(check));        %value
fprintf('Values of x greater than y: ')
for i=1:length(value)
    fprintf('%d ', value(i))
end
fprintf('\nx greater than y at value number: ')
for j=1:length(indices)
    fprintf('%d ', indices(j))
end
fprintf('\n')