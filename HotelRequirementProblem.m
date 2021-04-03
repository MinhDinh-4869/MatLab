%EXAM excer2, TUTORIAL4 excer6
% variables: xj: #waiters signed in period j
clc
f=[1 1 1 1 1 1];
A=[-1 -1 0 0 0 0; 0 -1 -1 0 0 0; 0 0 -1 -1 0 0; 0 0 0 -1 -1 0; 0 0 0 0 -1 -1; -1 0 0 0 0 -1; -1 0 0 0 0 0; 0 -1 0 0 0 0; 0 0 -1 0 0 0; 0 0 0 -1 0 0;
    0 0 0 0 -1 0; 0 0 0 0 0 -1];
b=[-75; -65; -55; -25; -35; -65; 0;0;0;0;0;0];
a=simlp(f,A,b);
fprintf('The minimum number of waiters is: %g\n', sum(a))

