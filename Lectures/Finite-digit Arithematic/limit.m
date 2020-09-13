f =@(x) (1-cos(x))./x.^2;
x = 10.^(-10:0);
y = f(x);

semilogx(x,y, 'o--');
title("limit of (1-cos x)/x^2")
xlabel("x"); ylabel("y");