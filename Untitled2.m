clc
num=input('num');
B=[num 0];
for k=2:5 
    str=num2str(B(k-1))
    
for i=1:length(str)
    vt(i)=str2double(str(i));  %put each value in stringnum into vector
end
    B(k)= sum(vt.^2)
    B(k+1)=0;    
end
B