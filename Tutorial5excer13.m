clc
x=input('Please inter a string: ', 's');
for i=1:length(x)
   reverseStr(length(x)+1-i)=x(i);
end
fprintf('The reverse string is: %s\n', reverseStr)
