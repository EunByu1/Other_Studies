clc; clear; close all;

x  = linspace(0, 2*pi, 50);
y1 = sin(x);
y2 = cos(x);

figure;
hold on;
grid on;

plot(x, y1, 'r-o', 'LineWidth', 2, 'MarkerSize', 6);
plot(x, y2, 'b--s', 'LineWidth', 2, 'MarkerSize', 6);
xlabel('X axis')
ylabel('Y axis')
title('Sine & Cosine Graph')
legend('sin(x)', 'cos(x)')
