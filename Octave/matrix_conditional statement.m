% 목표: 대각행렬, 상삼각행렬, 하삼각행렬을 찾아라
clc; clear; close all;

##
##C = [1, 0, 0; 0, 2, 0; 0, 0, 3];
##B = [1, 2, 3; 0, 2, 3; 0, 0, 3];
##A = [1, 0, 0; 2, 2, 0; 3, 3, 3];

A = input('행렬 A를 입력하세요 (예: [1 0 0; 0 2 0; 0 0 3]): ');

[n, m] = size(A);

is_diagonal = true;
is_upper_triangular = true;
is_lower_triangular = true;

% [1] 판단
for i = 1:n
 for j = 1:m
  % 대각행렬 여부 판단
  if (i~=j && A(i,j) ~= 0)
   is_diagonal = false;
  end

  % 상삼각행렬 여부
  if (i < j && A(i,j) == 0)
   is_upper_triangular = false;
  end

  % 하삼각행렬 여부
  if (i > j && A(i,j) == 0)
   is_lower_triangular = false;
  end
 endfor
end

% [2] 출력
if is_diagonal
 disp("Diagonal Matrix.")
elseif is_upper_triangular
 disp("Upper Triangular Matrix.")
elseif is_lower_triangular
 disp("Lower Triangular Matrix.")
end
