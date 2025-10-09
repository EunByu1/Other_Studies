% 원점과 축 정의
origin = [0, 0, 0];
x_axis = [1, 0, 0];
y_axis = [0, 1, 0];
z_axis = [0, 0, 1];

% 45도
theta = pi/4;

% 회전행렬
R = [cos(theta), -sin(theta), 0;
     sin(theta),  cos(theta), 0;
              0,           0, 1];

% rotation
x_axis_rot = R * x_axis';
y_axis_rot = R * y_axis';
z_axis_rot = R * z_axis';

figure;
grid on;
hold on;

% [전] rotation
line([origin(1), x_axis(1)],
     [origin(2), x_axis(2)],
     [origin(3), x_axis(3)],
     'Color', 'r', 'LineWidth', 2);
text(x_axis(1), x_axis(2), x_axis(3), 'X', 'FontSize', 12,
     'FontWeight', 'bold', 'Color', 'r');

line([origin(1), y_axis(1)],
     [origin(2), y_axis(2)],
     [origin(3), y_axis(3)],
     'Color', 'g', 'LineWidth', 2);
text(x_axis(1), x_axis(2), x_axis(3), 'X', 'FontSize', 12,
     'FontWeight', 'bold', 'Color', 'r');

line([origin(1), z_axis(1)],
     [origin(2), z_axis(2)],
     [origin(3), z_axis(3)],
     'Color', 'b', 'LineWidth', 2);
text(y_axis(1), y_axis(2), y_axis(3), 'Y', 'FontSize', 12,
     'FontWeight', 'bold', 'Color', 'g');

% [후] rotation
line([origin(1), x_axis_rot(1)],
     [origin(2), x_axis_rot(2)],
     [origin(3), x_axis_rot(3)],
     'Color', 'r', 'LineWidth', 2, 'LineStyle', '--');
text(x_axis_rot(1), x_axis_rot(2), x_axis_rot(3), 'X''', 'FontSize', 12,
     'FontWeight', 'bold', 'Color', 'r');

line([origin(1), y_axis_rot(1)],
     [origin(2), y_axis_rot(2)],
     [origin(3), y_axis_rot(3)],
     'Color', 'g', 'LineWidth', 2, 'LineStyle', '--');
text(y_axis_rot(1), y_axis_rot(2), y_axis_rot(3), 'Y''', 'FontSize', 12,
     'FontWeight', 'bold', 'Color', 'g');

line([origin(1), z_axis_rot(1)],
     [origin(2), z_axis_rot(2)],
     [origin(3), z_axis_rot(3)],
     'Color', 'b', 'LineWidth', 2, 'LineStyle', '--');
text(z_axis_rot(1), z_axis_rot(2), z_axis_rot(3), 'Z''', 'FontSize', 12,
     'FontWeight', 'bold', 'Color', 'b');

title('3D Coordinate System Transformation');
xlabel('X axis');
ylabel('Y axis');
zlabel('Z axis');

legend({'Original X-axis', 'Original Y-axis' ,'Original Z-axis',
        'Rotated X-axis', 'Rotated Y-axis', 'Rotated Z-axis'},
        'Location', 'northeastoutside');


axis equal;
view(3);
