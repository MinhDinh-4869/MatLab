x=input('sin(x): ');
quad=input('quadrant: ');
if abs(x)>1
   fprintf('ERROR')
elseif quad==1
    asind(x)
elseif quad==2
    180-asind(x)
elseif quad==3
    -180+asind(x)
elseif quad==4
    -asind(x)
end