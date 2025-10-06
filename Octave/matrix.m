clc; clear; close all;

A = [1, 2, 3;
     4, 5, 6;
     7, 8, 9]

B = [9, 8, 7;
     6, 5, 4;
     3, 2, 1]

% 행렬 연산
A+B
A-B
A*B

% 전치 행렬
A'

% 역행렬 
inv(A)

% 단위 행렬
I = eye(3)

% 0 행렬 
z = zeros(2,3)

% 1 행렬
o = ones(2,3)

% 행렬 size
sz = size(A)
