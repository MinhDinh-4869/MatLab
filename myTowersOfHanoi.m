function [] = myTowersOfHanoi(N, from, to, alt)
  % Accepts three integers: N - number of disks  
  % from - number of start tower, to - number of end tower, alt - free tower. 
  % Returs string outputs with succesive moves to complete the task of solving
  % the Towers of Hanoi with N disks moved from tower with number stored
  % in the second argument to one with number in third arg.

  totalNumberOfMoves = (2 ^ N) - 1;
  M = generateDiskMoves(totalNumberOfMoves);

  % These are the paths of disks if N is odd.
  path1 = [from, alt, to];  % Path of disk with odd number: from->alt->to 
  path2 = [from, to, alt];  % Path of disk with even number.

  currentPositions = ones(1, N); % index-disk number, value-number of moves

  len = numel(path1);

  % If N (numer of disks) is even the paths are swapped.
  if mod(N, 2) == 0
    [path2, path1] = swapArrays(path1, path2);  
  end  

  % Solve
  for i = M 
    from = -1;
    to = -1;

    if mod(i, 2) == 0  % if number of disk, i is even
      j = currentPositions(i); % j - number of moves for i-th disk

      % In C++ indexes: [0, size - 1] in Octave: [1, size] 
      % so: mod(j - 1, len) + 1, to avoid index = 0.
      from = path1( mod(j - 1, len) + 1); % Cycle over 1->2->3 

      j = j + 1; 

      to =  path1( mod(j - 1, len) + 1); 

      currentPositions(i) = j; % update moves of i-th disk

    else
      k = currentPositions(i);

      from = path2( mod(k - 1, len) + 1); 
      k = k + 1;  
      to =  path2( mod(k - 1, len) + 1); 

      currentPositions(i) = k;
    end  
      disp(sprintf('Move disk %d from %d to %d.', i, from, to))
  end  

end  
% From: http://mathworld.wolfram.com/BinaryCarrySequence.html

