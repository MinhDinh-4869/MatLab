%b�i1
word = input('Please enter a word: ','s');
dword = unique(double(word),'stable');
disp('String of distinct letters: ');disp(char(dword))
disp('Number of distinct letters: ');disp(strlength(char(dword)))
%b�i2
array = input('Please enter a numberic array: ','s');
cummsum = cumsum(str2num(array));
disp('The cumulative array is: ');disp(cummsum)
%b�i3
k = 1, b = -2, x = -1, y = -2

k = 2, b = -2, x = 0, y = -2

k = 3, b = -3, x = 1, y = -3
%b�i4
limerror = input('Please enter an error limit: ','s');
limerror = str2num(limerror);
func = @(x) x^3 - x - 2;
a = 1.0; b = 2.0; 
x_final = []; val = [];
iterations = 0; 
error = 1;
format long

% b?t ??u ??m 
while error >= limerror 
iterations = iterations + 1; % ??m 
c = a + (b-a)/2; 
 
fa = func(a);  
fb = func(b); 
fc = func(c);  
error = abs(fc);  % error = abs(c - 0); 

if (error < limerror)
x_final = c; 
else 
if (fa*fc < 0) % nghi?m ? gi?a a v� x 
b = c; 
else 
% nghi?m gi?a b v� x
a = c; 
end 
end
val = func(c);
end
fprintf('The number of iterations is %d \n', iterations); 
fprintf('The approximate zero is %e \n', x_final);