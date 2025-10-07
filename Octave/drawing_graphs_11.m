clc; clear; close all;

u = [1; 2];
v = [3; -1];

alpha_values = linspace(0, 1, 50);

figure;
hold on;
grid on;
axis equal;
xlim([-1, 5]);
ylim([-2, 3]);

plot([0, u(1)], [0, u(2)], 'b-', 'LineWidth', 2);
text(u(1)+0.01, u(2), 'u partial', 'FontSize', 12, 'Color', 'blue');

plot([0, v(1)], [0, v(2)], 'r-', 'LineWidth', 2);
text(v(1)+0.01, v(2), 'v partial', 'FontSize', 12, 'Color', 'red');

for i=1:length(alpha_values)
  alpha = alpha_values(i);

  clf;
  hold on;
  grid on;
  axis equal;
  xlim([-1, 5]);
  ylim([-2, 3]);

  plot([0, u(1)], [0, u(2)], 'b-', 'LineWidth', 2);
  text(u(1)+0.01, u(2), 'u partial', 'FontSize', 12, 'Color', 'blue');

  plot([0, v(1)], [0, v(2)], 'r-', 'LineWidth', 2);
  text(v(1)+0.01, v(2), 'v partial', 'FontSize', 12, 'Color', 'red');

  w_partial = alpha*u + (1-alpha)*v;
  plot([0, w_partial(1)], [0, w_partial(2)], 'g-', 'LineWidth', 2);
  text(w_partial(1)+0.01, w_partial(2), 'w partial', 'FontSize', 12, 'Color', 'green');


  xlabel('X axis');
  ylabel('Y axis');
  title(sprintf('Vector Sum Animation (Step %d/%d)', i, 50));

  pause(0.05);
end
hold off;



% ============== 방법 2 ==============
##for i=1:length(alpha_values)
##  alpha = alpha_values(i);
##
##  w_partial = alpha*u + (1-alpha)*v;
##  h = plot([0, w_partial(1)], [0, w_partial(2)], 'g-', 'LineWidth', 2);
##
##  pause(0.05);
##  delete(h);
##
##end
% ===================================
