f =@(x) x^2*(x-1);
fp =@(x) 2*x*(x-1) + x^2;
x0=-1; tol=1e-16; p=0; m=2;
x_newton = newton(f,fp,x0,tol);
x_mn = modified_newton(f,fp,m,x0,tol);

semilogy(abs(x_newton-p),'bo'); hold on;
semilogy(abs(x_mn - p),'ro');
grid on;
title("Comparison between Newton & Modified Newton")
xlabel("n"); ylabel("|x_n - p|");
legend(["Newton", "Modified Newton"])