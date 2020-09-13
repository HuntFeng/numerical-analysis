% Using Talor series to approximate e within tolerance 1e-6. 
% e = 1/0! + 1/1! + 1/2! + ... + 1/n! + 1/(n+1)!
% The last term 1/(n+1)! is the approximated error
e = 0;
i = 0;
err = 1/factorial(i+1);
while(err >= 1e-6)
    e = e + 1/factorial(i);
    i = i + 1;
    err = 1/factorial(i+1);
end

% i=0, e=0
% e = 0 + 1/0! = 1