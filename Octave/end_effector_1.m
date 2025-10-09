% EE(End Effector) 기하학적으로 해석
clc; clear; close all;

% link 길이
L1 = 1;
L2 = 1;

t = linspace(0, 2*pi, 100);

% 관절 각도
theta1 = sin(t);
theta2 = cos(t);

% 각 Link의 끝점 계
x1 = L1 * cos(theta1);
y1 = L1 * sin(theta1);

x2 = x1 + L2 * cos(theta1 + theta2);
y2 = y1 + L2 * sin(theta1 + theta2);

figure;
hold on;
grid on;
axis([-2, 2, -2, 2]);
axis equal;

for i = 1:length(t)
  clf;
  hold on;
  grid on;
  axis([-2, 2, -2, 2]);
  axis equal;

  % 첫 번째 Link
  plot([0, x1(i)], [0, y1(i)], 'b-', 'LineWidth', 2);
  % 두 번째 Link
  plot([x1(i), x2(i)], [y1(i), y2(i)], 'r-', 'LineWidth', 2);
  % 끝 점 표시
  plot(x2(i), y2(i), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'black');

  pause(0.05);
end
