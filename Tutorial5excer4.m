clc
a=input('Please type the angle: '); %x=
b=input('Please type the initial velocity: ');
g=9.81;
t=input('please give time:');
h = @(a,b,c,t) b*sind(a).*t - 0.5*c.*(t.^2);
v = @(a,b,c,t) sqrt(b.^2 - 2*b*c*sind(a).*t + (c.^2).*(t.^2));
velocity=v(a,b,g,t); %calculate velocity
height=h(a,b,g,t);   %calculate height
% i.)
x=h(a,b,g,t) > 15;
% ii.)
k=v(a,b,g,t)<=36;
checkand=x&k;
% iii.)
x1=h(a,b,g,t)<5; k1=v(a,b,g,t)>35;
checkor=x1|k1;
fprintf('a).\n')
fprintf('The height that is no less than 15m: ')
for i=1:length(t)
    if x(i)== 1
        fprintf('%gm, ', height(i))
    end
end
fprintf('\nThe height that is no less than 15m AND velocity is no greater than 36: ')
for i=1:length(t)
    if checkand(i)== 1
        fprintf('%gm, ', height(i))
    end
end
fprintf('\nThe height that is less than 5m OR velocity is greater than 35: ')
for i=1:length(t)
    if checkor(i)==1
        fprintf('%gm, ', height(i))
    end
end
% b.)
fprintf('\nb).\n')
time= @(a,b,g) (2*b*sind(a))/g;
dis= @(a,b,time) b*cosd(a).*time(a,b,g);
fprintf('Maximium height: %gm\n', max(height))
fprintf('Total distance: %gm\n', dis(a,b,time))
fprintf('Time hit ground: %gs\n', time(a,b,g))
