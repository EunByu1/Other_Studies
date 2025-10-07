clc; clear; close all;

figure;
hold on;
grid on;
axis equal;

x_point = [1, -1];
y_point = [1, -1];

plot(x_point(1), y_point(1), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
text(x_point(1)+0.09, y_point(1), '(1, 1)', 'FontSize', 12, 'Color', 'red');

plot(x_point(2), y_point(2), 'go', 'MarkerSize', 10, 'MarkerFaceColor', 'g');
text(x_point(2)+0.09, y_point(2), '(-1, -1)', 'FontSize', 12, 'Color', 'green');

xlabel('X axis')
ylabel('Y axis')
title('point and text');
