clc; clear; close all;

% 2DOF robot workspace only
l1 = 4;
l2 = 2;

theta1_vals = linspace(0, 2*pi, 100);
theta2_vals = linspace(0, 2*pi, 100);

x_vals = [];
y_vals = [];

figure;
grid on;
axis equal;
axis([-6, 6, -6, 6]);

xlabel('X axis');
ylabel('Y axis');
title('2DOF Robot Workspace');

for theta1 = theta1_vals
  for theta2 = theta2_vals
   x = l1 * cos(theta1) + l2 * cos(theta1 + theta2);
   y = l1 * sin(theta1) + l2 * sin(theta1 + theta2);

   x_vals = [x_vals, x];
   y_vals = [y_vals, y];
  endfor
end

plot(x_vals, y_vals, 'b.');
