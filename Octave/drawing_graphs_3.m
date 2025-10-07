clc; clear; close all;

% linspace = linear space (시작, 끝, 몇개로 데이터 나눌지)
x = linspace(0, 2*pi, 100);
y = sin(x);

figure;
hold on;
grid on;
axis equal;
xlim([-2, 2])
ylim([-2, 2])

plot(x, y, 'b-', 'LineWidth', 2);
xlabel('X axis')
ylabel('Y axis') 
title('Sine Wave')
