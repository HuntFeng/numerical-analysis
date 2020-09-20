f = @(x) x^2-2; p=sqrt(2);
tol = 1e-16;
% bisection
a=1; b=2;
xn_b = bisection(f,a,b,tol);

semilogy(abs(xn_b - p),'o');
title("Order of convergence")
xlabel("n"); ylabel("|x_n - p|");
legend(["Bisection"])