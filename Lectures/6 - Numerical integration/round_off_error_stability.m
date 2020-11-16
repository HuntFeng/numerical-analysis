% Find integral of f(x)=x^2 from 0 to 1
% The exact integral is 1/3
% We use composite trapezoidal rule to compute this value
f = @(x) x.^2;
exact = 1/3; % exact integral is 1/3
h_range = 10.^(-7:0.1:-1);
error = [];
for h=h_range
    x=0:h:1;
    approximate = trapz(x,f(x)); % matlab has built-in composite trapz method
    error = [error abs(approximate - exact)];
end
error_bound = h_range.^2/12;
round_off_err = h_range;
loglog(h_range,error); hold on;
loglog(h_range,error_bound,'--')
loglog(h_range,round_off_err,'--')
grid on;
legend(["abs err", "(h^2/12)f'' ", "round off err"])
xlabel("h"); 
ylabel("absolute error");
title("Absolute error of composite trapezoidal rule")
