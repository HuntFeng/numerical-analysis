f = @(x) x^2 - 2;
fp = @(x) 2*x;
x0 = 50; tol=1e-16;
xn = newton(f,fp,x0,tol);
semilogy(abs(xn(1:20)-sqrt(2)),'o');
title("Order of convergence(Newton)")
grid on;
xlabel("n"); ylabel("|x_{n}-p|");