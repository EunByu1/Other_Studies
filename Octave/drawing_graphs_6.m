clc; clear; close all;

figure;
hold on;
grid on;
axis equal;

xlim([-1.5, 1.5])
ylim([-1.5, 1.5])

theta = linspace(0, 2*pi, 100);
x_circle = cos(theta);
y_circle = sin(theta);
plot(x_circle, y_circle, 'b--');

for i=1:length(theta)
  x_point = cos(theta(i));
  y_point = sin(theta(i));

  h = plot(x_point, y_point, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
  pause(0.05);

  delete(h);
end
