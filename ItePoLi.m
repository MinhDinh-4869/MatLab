clc
array=input('Please type the word that you want to check: ', 's');
count=0;
for i=1:length(array)
    if array(i)~=array(length(array)-i+1)
        count=count+1;
    end
end
if count==0
    disp('1')
else
    disp('0')
end
        
 