function myTower(N, from, to, alt)
% This function displays the moves of N disks from the Tower ’from’ to the Tower ’to’
% which solves the Towers of Hanoi problem.
% To do that we need the Tower ’alt’ for the middle steps.
% The inputs are all numbers.
if N ~= 0
myTower(N-1, from, alt, to); % recursive step
fprintf('%d %d %d %d  ', N, from, to, alt)
disp(sprintf('Move disk %d from Tower %d to Tower %d', N, from, to))
myTower(N-1, alt, to, from);
fprintf('%d %d %d %d  ', N, from, to, alt)
end

