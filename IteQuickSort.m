function [sorted] = IteQuickSort(array)
for i=1:length(array)
    for j=i+1:length(array)
        if array(i) > array(j)
            change=array(i);
            array(i)=array(j);
            array(j)=change;
        end
    end
end
sorted=array;
