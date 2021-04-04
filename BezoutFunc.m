function f=BezoutFunc(r0,r1)
i=1;
r=[r0 r1 mod(r0,r1)];   %[r0 r1 r2]
q=(r0-r(3))/r1;         %[q1]
s=[1 0 1];              %[s0 s1 s2]
t=[0 1 -q(1)];          %[t0 t1 t2]
if r(i+2)==0
    f=[0, 0];
elseif r(i+2)==GCD(r0,r1)
    f=[1, -q(1)];
else
    while r(i+2)~=GCD(r0,r1) %check the r_(n-1)(current value), if r_(n-1) >< gcd(a,b)
        i=i+1;             % calculate the next position
        r(i+2)=mod(r(i),r(i+1));   %rn=mod(r_(n-1), r_(n-2))
        q(i)=(r(i)-r(i+2))/r(i+1); %qi=[r_(i-1)-r_(i+1)]/r_i
        s(i+2)=s(i)-q(i)*s(i+1);   %s_n=s_(n-2)-q_(n-1)*s_(n-1)
        t(i+2)=t(i)-q(i)*t(i+1);   %t_n: same as s_n
    end
    f=[s(length(s)), t(length(t))];
    %fprintf('s= %d \n', s(length(s)))
    %fprintf('t= %d \n', t(length(t)))
end
end