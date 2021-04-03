clc
num=input('type the number that you want to convert to vector: ');
stringnum=num2str(num); %convert the input value from number to string in order to get the length 
for i=1:length(stringnum)
    vector(i)=str2double(stringnum(i));  %put each value in stringnum into vector
end
fprintf('vector of digits: ')
vector


