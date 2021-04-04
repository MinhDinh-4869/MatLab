clc
num=input('please type the row: ');
char=input('please type the column: ', 's');
m=double(char);
if mod(m,2)==1&mod(num,2)==1|mod(m,2)==0&mod(num,2)==0
    fprintf('The color of %s%d square is: %s\n', chara, num, 'black')
else
    fprintf('The color of %s%d square is: %s\n', chara, num, 'white')
end
