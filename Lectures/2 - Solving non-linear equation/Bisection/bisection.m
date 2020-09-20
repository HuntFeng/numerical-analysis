% solving f(x) = 0
function x_arr = bisection(f,a,b,tol)
    x_arr = [];
    left = a;
    right = b;
    
    if f(left)*f(right)>0
        fprintf("Interval\Function not valid.")
    else
        n = ceil(log2((right-left)/tol));
        for i=1:n
            x = (left + right)/2;
            x_arr = [x_arr x];
            if f(left)*f(x)<0
                right = x;
            elseif f(x)*f(right)<0
                left = x;
            elseif f(x)==0
                break
            end
        end
    end
end