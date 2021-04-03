function T = IteTrib(n)
a=[1 1 1];
for i=4:n
    a(i)=a(i-1)+a(i-2)+a(i-3);
end
T=a(n);
fprintf('Number %d th: %d', n, T);
