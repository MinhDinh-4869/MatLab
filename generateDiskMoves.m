function [M] = generateDiskMoves(N)
  % Accepts integer: N - total number of moves.
  % Returns a 1xN integer array with the first N consecutive disk moves
  % in Tower of Hanoi where the index is the move number 
  % and the value is the disk number. m - is discarded.

  [m, M] = Omega2(N); % Generate the first N terms of: "Binary Carry Sequence".

  M = M .+ 1;         % Add one and get moves of disk in Tower of Hanoi.

  if N < 2            % Get only the first move.
    M = M(1);       
  end    
end  
