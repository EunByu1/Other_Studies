clc; clear; close all;

x = 5;
y = 5 ;


% Logical Operator
disp(x==y) %1(true)
disp(x~=y) %0(false)

disp(x>y) %0(false)
disp(~(x>y)) %1(true)
disp(x>y & x>0) % 0(false)
disp(x>y | x>0) %1(true)


% Conditional Statement
if x>y
 disp("x는 y보다 큽니다.")
elseif x<y
 disp("y는 x보다 큽니다.")
else
  disp("x와 y는 같습니다.")
end
