clc; clear; close all;

v = [1; 2];

k_values = linspace(0, 2, 50);

figure;
hold on;
grid on;
axis equal;
xlim([-3, 3]);
ylim([-3, 5]);

for i = 1:length(k_values)
  k = k_values(i);

  v_scaled = k * v;

  clf;
  hold on;
  grid on;
  axis equal;
  xlim([-3, 3]);
  ylim([-3, 5]);

  % 직선 그리기
  plot([0, v_scaled(1)], [0, v_scaled(2)], 'b-', 'LineWidth', 3);
  plot(v_scaled(1), v_scaled(2), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

  pause(0.05);
end
