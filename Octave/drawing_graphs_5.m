clc; clear; close all;

radius = 0.5;
center_x = 1.0;
center_y = 0.5;

theta = linspace(0, 2*pi, 100);
x_circle = center_x + radius * cos(theta);
y_circle = center_y + radius * sin(theta);

figure;
plot(x_circle, y_circle, 'r--', 'LineWidth', 1.5);
axis equal;
x_label('X axis');
y_label('Y axis');
title('Draw Circle path')
