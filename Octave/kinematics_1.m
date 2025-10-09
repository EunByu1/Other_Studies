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


[x, y] = forward_kinematics(pi/6, pi/6, 1, 1)
[theta1, theta2] = inverse_kinematics(x, y, 1, 1)


rad2deg([theta1, theta2])
