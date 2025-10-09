% EE(End Effector) 정역학으로 해석
clc; clear; close all;

L1 = 1;
L2 = 1;

theta1 = pi/6; % 60º
theta2 = pi/6; % 60º

DH = [0, 0,  0, theta1;
      0, L1, 0, theta2;
      0, L2, 0,      0]; 

% T01 = Rot(z1, theta1)
T01 = [cos(theta1), -sin(theta1), 0, 0;
       sin(theta1),  cos(theta1), 0, 0;
                 0,            0, 1, 0;
                 0,            0, 0, 1];

% T12 = Trans(x1, L1) * Rot(z2, theta2)
T12_t = [1, 0, 0, L1;
         0, 1, 0,  0;
         0, 0, 1,  0;
         0, 0, 0,  1];

T12_r = [cos(theta2), -sin(theta2), 0, 0;
         sin(theta2),  cos(theta2), 0, 0;
                   0,            0, 1, 0;
                   0,            0, 0, 1];

T12 = T12_t * T12_r;

% T23 = trans(x2, L2)
Ta23 = [1, 0, 0, L2;
       0, 1, 0,  0;
       0, 0, 1,  0;
       0, 0, 0,  1];

% T03 = T01 * T12 * T23
T = T01 * T12 * T23;

x1 = T01(1, 4);
y1 = T01(2, 4);

x2 = (T01 * T12)(1, 4);
y2 = (T01 * T12)(2, 4);

x3 = T(1, 4);
y3 = T(2, 4);

figure;
hold on;
grid on;
axis([-2, 2, -2, 2]);

plot([0, x1],  [0, y1], 'r-', 'LineWidth', 3);
plot([x1, x2], [y1, y2], 'g-', 'LineWidth', 3);
plot([x2, x3], [y2, y3], 'b-', 'LineWidth', 3);

plot(x1, y1, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
plot(x2, y2, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
plot(x3, y3, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

xlabel('X axis');
ylabel('Y axis');
title('2 Link RR Manipulator');
