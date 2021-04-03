clc
extraDay=input('Type the year that you want to check: ');
if mod(extraDay, 400)==0|mod(extraDay,4)==0&mod(extraDay,100)~=0;
    fprintf('The year %d is a leap year', extraDay)
else
    fprintf('The year %d is not a leap year', extraDay)
end