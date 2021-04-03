clc
year=input('Type the year that you want to check: ');
if mod(year, 400)==0|mod(year,4)==0&mod(year,100)~=0;
    fprintf('That is a leap year')
else
    fprintf('That is not a leap year')
end