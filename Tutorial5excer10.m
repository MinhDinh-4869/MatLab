clc
a(1,1)=input('Type your first number: ');
for i=2:3
    a(:,i)=a(:,i-1)+4;
end
for i=2:4
    a(i,:)=a(i-1,:)+6;
end
a