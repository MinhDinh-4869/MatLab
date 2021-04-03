function [ave,sd] = statsubfun(x) % the primary function
ave = avefun(x);
sd = sdfun(x,ave);
function m = avefun(y) % subfunction
m = sum(y)/length(y);
function s = sdfun(y,m) % subfunction
u = (y - m).^2;
s = sqrt(sum(u)/length(y));