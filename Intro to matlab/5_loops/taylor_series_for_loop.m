% Using 5th-order Talor series to approximate e. 
% e = 1/0! + 1/1! + 1/2! + ... + 1/5!
e = 0;
for i=0:5
    e = e + 1/factorial(i);
end
% i=0, e=0
% e = 0 + 1/0! = 1
% i=1, e=1
% e = 1 + 1/1! = 2
% i=2, e=2
% e = 2 + 1/2! = ...
