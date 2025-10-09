% 원점 정의
origin = [0, 0, 0];

% 좌표계 A의 축 정의
x_axis_A = [1, 0, 0];
y_axis_A = [0, 1, 0];
z_axis_A = [0, 0, 1];

% 회전 행렬
R_A = [x_axis_A; y_axis_A; z_axis_A]';

figure;
hold on;
grid on;
axis equal;

% quiver3: 화살표로 방향 벡터 시각화
quiver3(origin(1), origin(2), origin(3),
        x_axis_A(1), x_axis_A(2), x_axis_A(3),
        1, 'r', 'LineWidth', 2);

quiver3(origin(1), origin(2), origin(3),
        y_axis_A(1), y_axis_A(2), y_axis_A(3),
        1, 'g', 'LineWidth', 2);

quiver3(origin(1), origin(2), origin(3),
        z_axis_A(1), z_axis_A(2), z_axis_A(3),
        1, 'b', 'LineWidth', 2);


% 전위O, 회전X
A  = [0, 2, 0];
origin_A = origin + A;

quiver3(origin_A(1), origin_A(2), origin_A(3),
        x_axis_A(1), x_axis_A(2), x_axis_A(3),
        1, 'r', 'LineWidth', 2);

quiver3(origin_A(1), origin_A(2), origin_A(3),
        y_axis_A(1), y_axis_A(2), y_axis_A(3),
        1, 'g', 'LineWidth', 2);

quiver3(origin_A(1), origin_A(2), origin_A(3),
        z_axis_A(1), z_axis_A(2), z_axis_A(3),
        1, 'b', 'LineWidth', 2);


% 전위X, 회전O
R_Z = [  0.5, -0.866, 0;
       0.866,    0.5, 0;
           0,      0, 1];
R_B = R_Z * R_A;

quiver3(origin(1), origin(2), origin(3),
        R_B(1, 1), R_B(2, 1), R_B(3, 1),
        1, 'r', 'LineWidth', 2);

quiver3(origin(1), origin(2), origin(3),
        R_B(1, 2), R_B(2, 2), R_B(3, 2),
        1, 'g', 'LineWidth', 2);

quiver3(origin(1), origin(2), origin(3),
        R_B(1, 3), R_B(2, 3), R_B(3, 3),
        1, 'b', 'LineWidth', 2);


% 전위O, 회전O
R_Z = [  0.5, -0.866, 0;
       0.866,    0.5, 0;
           0,      0, 1];
R_B = R_Z * R_A;

quiver3(origin_A(1), origin_A(2), origin_A(3),
        R_B(1, 1), R_B(2, 1), R_B(3, 1),
        1, 'r', 'LineWidth', 2);

quiver3(origin_A(1), origin_A(2), origin_A(3),
        R_B(1, 2), R_B(2, 2), R_B(3, 2),
        1, 'g', 'LineWidth', 2);

quiver3(origin_A(1), origin_A(2), origin_A(3),
        R_B(1, 3), R_B(2, 3), R_B(3, 3),
        1, 'b', 'LineWidth', 2);
