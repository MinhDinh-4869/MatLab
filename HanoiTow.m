function HanoiTow(N,from,to,alt)
if N~=0
    HanoiTow(N-1,from,alt, to)
    fprintf('move disk %d from %d to %d\n',N, from,to)
    HanoiTow(N-1,alt, to, from)
end