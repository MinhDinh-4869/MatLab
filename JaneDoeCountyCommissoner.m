f=[-0.6 -0.6 -0.5 -0.3];
A=[1 1 1 1; 0.5 0.5 1 2; 2 3 1 4; 1 -1 0 0; 0 1 1 -1; -1 -0.25 -0.5 -3; -1 0 0 0; 0 -1 0 0; 0 0 -1 0; 0 0 0 -1];
b=[50000; 40000; 18000; 0; 0; -10000;0;  0; 0;0];
simlp(f, A,b)