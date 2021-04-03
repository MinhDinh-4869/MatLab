function [T] = tensionForce(d)
T = 6000./(d.*sqrt(9-d.^2));
