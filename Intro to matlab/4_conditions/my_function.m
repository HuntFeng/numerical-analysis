% 0 <= x <=1: x;  
% 1 < x <=2: x+1;
% otherwise: 0
function y = my_function(x)
    if(0<=x)&(x<=1)
        y=x;
    elseif (1<x)&(x<=2)
        y=x+1;
    else
        y=0;
    end
end