function [P] = Poli(array)
if length(array)==1
    P=1;
elseif length(array)==2
    P=0;
elseif length(array)==3
    if array(1)==array(length(array))
        P=1;
    else
        P=0;
    end
elseif array(1)==array(length(array))
    P=Poli(array(2:length(array)-1));
else
    P=0;
end