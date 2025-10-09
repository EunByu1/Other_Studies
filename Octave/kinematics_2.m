clc; clear; close all;

% 2DOF 정기구학
function [x, y] = forward_kinematics(theta1, theta2, l1, l2)
  x = l1 * cos(theta1) + l2 * cos(theta1 + theta2);
  y = l1 * sin(theta1) + l2 * sin(theta1 + theta2);
end


% 2DOF 역기구학
function [theta1, theta2] = inverse_kinematics(x, y, l1, l2)
  cos_theta2 = (x^2 + y^2 - l1^2 - l2^2) / (2 * l1 * l2);
  sin_theta2 = sqrt(1-cos_theta2^2);

  theta2 = atan2(sin_theta2, cos_theta2);

  cos_theta1 = (x * (l1 + l2 * cos(theta2)) + (y * l2 * sin(theta2))) / ((l1 + l2 * cos(theta2))^2 + (l2 * sin(theta2))^2);
  sin_theta1 = (y * (l1 + l2 * cos(theta2)) - (x * l2 * sin(theta2))) / ((l1 + l2 * cos(theta2))^2 + (l2 * sin(theta2))^2);

  theta1 = atan2(sin_theta1, cos_theta1);
end

function two_dof_robot_ik_simulator()
  L1 = 1.0;
  L2 = 1.0;

  t = linspace(0, 2*pi, 100);

  x = 1.0 + 0.5 * cos(t);
  y = 0.5 + 0.5 * sin(t);

  figure;
  hold on;
  grid on;
  axis([-2, 2, -2, 2]);
  axis equal;

  for i=1:length(t)
   target_x = x(i);
   target_y = y(i);

   [theta1, theta2] = inverse_kinematics(target_x, target_y, L1, L2);
   [end_x, end_y] = forward_kinematics(theta1, theta2, L1, L2);

   % joint 표시
   x1 = L1 * cos(theta1);
   y1 = L1 * sin(theta1);

   x2 = end_x;
   y2 = end_y;

   cla;
   plot(x, y, 'g--');
   plot( [0, x1],  [0, y1], 'b', 'LineWidth', 2);
   plot([x1, x2], [y1, y2], 'r', 'LineWidth', 2);
   plot(x2, y2, 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'black');
   plot(target_x, target_y, 'gx', 'MarkerSize', 10);

   pause(0.01);
  endfor
end

two_dof_robot_ik_simulator()
