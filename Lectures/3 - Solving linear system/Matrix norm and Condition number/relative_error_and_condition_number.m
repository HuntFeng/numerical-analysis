p = 1; % using p-norm

n = 100;
x_exact = ones(n,1);
rel_err = [];
for i=1:1000
    A = rand(n); % 3 by 3 random matrix
    b = A*x_exact;
    x_approx = A\b; % solve x by using GE
    
    rel_err = [rel_err, norm(x_approx - x_exact, p)/norm(x_exact,p)];
end

semilogy(rel_err, 'o'); hold on;
yline( cond(A,p)*eps(1) ) % assuming relative error in b is machine epsilon
title(['The relative error in x (using norm ',num2str(p),')'])
xlabel("number of experiments"); ylabel("relative error");
legend(["relative error", "\kappa(A)\epsilon"]);
grid on;