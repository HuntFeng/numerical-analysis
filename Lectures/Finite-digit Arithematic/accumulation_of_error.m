x = 0:0.01:4;
% ????
y1 = (x-2).^16;

% ?????
y2 = zeros(1,length(x));
for k=0:16
    y2 = y2 + nchoosek(16,k)*x.^k*(-2)^(16-k);
end

semilogy(x,y1); hold on;
semilogy(x,y2)
legend(["direct computation", "binomial expansion"])
xlabel("x"); ylabel("y");
title("(x-2)^{16} in semilogy scale")
