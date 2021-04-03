clc
x=input('Please type a number x: ');
if abs(x)>1
    fprintf('ERROR!!!\n')
elseif x>0
    fprintf('Angles: %g or %g\n', asind(x), 180-asind(x))
    if asind(x)<=90; asind(x)>=0;
     fprintf('%g: quadrant 1\n%g: quadrant 2\n', asind(x), 180-asind(x))
    else
        fprintf('%g: quadrant 2\n%g: quadrant 1\n', 180-asind(x), asind(x))
    end
elseif x<0
    fprintf('Angles: %g or %g\n', asind(x), -180-asind(x))
    if asind(x)>=-90; asind(x)<=0;
        fprintf('%g: quadrant 4\n%g: quadrant 3\n', asind(x), -180-asind(x))
    else 
        fprintf('%g: quadrant 3\n%g: quadrant 4\n', -180-asind(x), asind(x))
    end
end