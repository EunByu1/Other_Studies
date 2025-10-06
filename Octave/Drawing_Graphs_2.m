clc; clear; close all;

x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);
y3 = sin(2*x);
y4 = cos(2*x);

figure;
subplot(2, 2, 1);
plot(x, y1);
title('sin(x)');
xlabel('x');
ylabel('sin(x)');
grid on;

subplot(2, 2, 2);
plot(x, y2);
title('cos(x)');
xlabel('x');
ylabel('cos(x)');
grid on;

subplot(2, 2, 3);
plot(x, y3);
title('sin(2*x)');
xlabel('x');
ylabel('sin(2*x)');
grid on;

subplot(2, 2, 4);
plot(x, y4);
title('cos(2*x)');
xlabel('x');
ylabel('cos(2*x)');
grid on;
