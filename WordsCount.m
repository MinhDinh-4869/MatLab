clc
array=input('string: ', 's');
if isempty(array)
    fprintf('Error, type some fucking strings u BITCH!!!\n')
else
    for i=1:length(array)
        if array(i)~=0
            count=1;
        end
        for j=i+1:length(array)
            if array(j)==array(i)
                count=count+1;
                array(j)=0;
            end
        end
        if array(i)~=0&&array(i)~=' '
        fprintf('%s: %d\n',array(i), count)
        end
    end
end
