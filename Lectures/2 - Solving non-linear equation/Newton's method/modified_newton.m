function x_arr = modified_newton(f, fp, m, x0, tol)
    % f: f(x)=0, the function we need to solve
    % fp: derivative of f(x)
    % m: multiplicity of the root
    % x0: initial point
    % tol: tolerance
    
    % max_iter: if iteration exceeds max_iter, 
    % we stop the calculation
    max_iter = 1000;

    x_arr = [x0];
    x = x0;    
    x_next = x - m*f(x)/fp(x);
    x_arr = [x_arr x_next];
    iter = 0;
    while abs(x_next - x) >= tol && iter < max_iter 
        x = x_next;
        x_next = x - m*f(x)/fp(x);
        x_arr = [x_arr x_next];
        iter = iter + 1;
    end
end