x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);
y3 = x.^2;

figure(1)
subplot(221)
plot(x,y1)
hold on;
plot(x,y2)
title("y1")
xlabel("x")
ylabel("y")
subplot(222)
plot(x,y2)
subplot(223)
plot(x,y3)

figure(2)
plot(x,y1)