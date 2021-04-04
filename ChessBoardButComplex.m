clc
num=input('please type the row: ');
chara=input('please type the column: ', 's');
row=[1:8];
col=['abcdefgh'];
for i=1:length(row)
    if col(i)==chara;
        a=i;
    end
end
if mod(a,2)==0&mod(num,2)==0|mod(a,2)==1&mod(num,2)==1;
    fprintf('The color of %s%d square is: %s\n', chara, num, 'black')
else
    fprintf('The color of %s%d square is: %s\n', chara, num, 'white')
end