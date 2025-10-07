clc; clear; close all;

A = [1, 2; 3, 4];

theta = linspace(0, 2*pi, 100);
x_circle = cos(theta);
y_circle = sin(theta);

transformed_points = A * [x_circle; y_circle];
x_transformed = transformed_points(1, :);
y_transformed = transformed_points(2, :);

figure;
hold on;
grid on;
axis equal;

plot(x_circle, y_circle, 'b-', 'LineWidth', 2);
plot(x_transformed, y_transformed, 'r--', 'LineWidth', 2);

legend('unit circle', 'path transformed by matrix A')
xlabel('X axis')
ylabel('Y axis')
title('Visualization of Circular path through matrix transformation.')
