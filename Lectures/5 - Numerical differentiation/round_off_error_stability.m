% Find derivative of f(x)=x^2 at x=1
% The exact derivative is f'(1)=2
% Now we use 2-pt formula with different h
% to calculate this value
f = @(x) x.^2;
fp = 2; % exact derivative at x=1 is 2
h = 10.^(-12:0.1:-4);
x=1;
fp_2pt = @(h) (f(x+h)-f(x))./h;
asymptote = h(h>=1e-8)/2;
loglog(h,abs(fp_2pt(h)-fp)); hold on;
loglog(h(h>=1e-8),asymptote,'--')
grid on;
legend(["abs err", "h/2"])
xlabel("h"); 
ylabel("|f'(x)-(f(x+h)-f(x))/h|");
title("Absolute error of 2-pt formula")
