clc
u=[];
for i=1:9
    fprintf('u%d:', i)
    u(i)=input('');
end
s=0;
for i=1:9
    s=s+i*u(i);
end
fprintf('X: %d\n', mod(s,11))