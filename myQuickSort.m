function sorted = myQuickSort(array)
if length(array)<=1
    sorted = array;
else
    pivot = array(1);
    smaller = [];
    bigger= [];
    same=[];
    for i=1:length(array)
        if pivot < array(i)
            bigger = [bigger, array(i)];
        elseif pivot > array(i)
            smaller = [smaller, array(i)];
        else
            same = [same, array(i)];
        end
    end
    sorted=[myQuickSort(smaller), same, myQuickSort(bigger)]
end