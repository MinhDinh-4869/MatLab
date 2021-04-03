clc
string=input('Please enter a string:', 's');
fbid=input('Please enter forbiden letters:', 's');
k=1;
for i=1:length(fbid)
    for j=1:length(string)
        if string(j)==fbid(i)
            string(j)=0;
        end
    end
end
for i=1:length(string)
    if string(i)~=0
        newstring(k)=string(i);
        k=k+1;
    end
end
fprintf('Newstring: %s\n', newstring)