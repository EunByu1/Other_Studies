% 목표: 행렬의 역행렬을 판단하라
clc; clear; close all;

A = input('행렬 A를 입력하세요 (예: [1 0 0; 0 2 0; 0 0 3]): ');

[n, m] = size(A)

if (n ~= m)
  disp("does not exist.")
else
  det_A = det(A);
  if (det_A == 0)
   disp("does not exist.")
  else
   disp("exist.")
   inv_A = inv(A);
   disp("inverse matrix: ")
   disp(inv_A)
  end
end
