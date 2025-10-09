clc; clear; close all;

% 2DOF Robot Workspace Animation
l1 = 4;
l2 = 2;

theta1_vals = linspace(0, 2*pi, 100);
theta2_vals = linspace(0, 2*pi, 100);

figure;
hold on;
grid on;
axis equal;
axis([-6, 6, -6, 6]);

xlabel('X axis');
ylabel('Y axis');
title('2DOF Robot Workspace');

h_robot = plot([0, 0], [0, 0], '-r', 'LineWidth', 2);
h_workspace = plot(0, 0, 'b.');

x_vals = [];
y_vals = [];

for theta1 = theta1_ vals
  for theta2 = theta2_vals
    x1 = l1 * cos(theta1);
    y1 = l1 * sin(theta1);

    x2 = x1 + l2 * cos(theta1 + theta2);
    y2 = y1 + l2 * sin(theta1 + theta2);

    set(h_robot, 'XData', [0, x1, x2], 'YData', [0, y1, y2]);

    x_vals = [x_vals, x2];
    y_vals = [y_vals, y2];

    set(h_workspace, 'XData', x_vals, 'YData', y_vals);

    pause(0.01);
  endfor
end
