function [P] = ItePoLine(array)
count=0;
for i=1:length(array)
    if array(i)~=array(length(array)-i+1)
        count=count+1;
    end
end
if count==0
    P=1;
else
    P=0;
end