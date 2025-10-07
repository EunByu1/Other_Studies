clc; clear; close all;

u = [1; 2];
v = [3; 1];

a = linspace(0, 1, 20);
b = linspace(0, 1, 20);

figure;
hold on;
grid on;
axis equal;

for i = 1:length(a)
  for j = 1:length(b)
    point = a(i)*u + b(j)*v;
    plot(point(1), point(2), 'bo');
  endfor
end

xlabel('X axis')
ylabel('Y axis')
title('The area that linear combination of vecotrs u and v.')
