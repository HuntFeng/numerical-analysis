% x>=0: x; x<0, -x
function y=absolute_value(x)
    if(x>=0)
        y=x;
    else
        y=-x;
    end
end