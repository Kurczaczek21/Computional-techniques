% A*x = b, x=?
clear all; close all;
A = [  1 1;
      0.99999 1  ];
b = [    5;
       11  ];

det(A),

x1 = inv(A)*b;          % x=A^(-1)*b
x2 = A\b;               % optymalne rozwiazywanie rown. Ax=b
%x3 = pinv(A)*b;        % macierz NIE kwadratowa
spr1 = A*x1;            % sprawdzenie
err1 = max(abs(x1-x2)),  

A = A+0.01*randn(size(A));
x3 = inv(A)*b;
x4 = A\b;
spr2 = A*x2;
err2 = max(abs(x3-x4)),

C = [1 0.00000052 0.00000043;
    101 0.0001 0.0000633;
    79 0.00001 0.21219];
d = [1;
    2;
    3];
det(C),

C = C+0.01*randn(size(C));
x5 = inv(C)*d;
x6 = C\d;
x7 = pinv(C)*d;
spr3 = C*x5;
err3 = max(abs(x5-x6)),
