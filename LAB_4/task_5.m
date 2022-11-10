% equnonlin_invmat.m
% A*x = b, x=?
clear all; close all;

A = [ 1 2;3 4 ];
B = [ 5; 11 ];
inv(A),
x1 = inv(A)*B, % x=A^(-1)*b
A_1 = (1/( (A(1,1)*A(2,2) ) - ((A(2,1))*(A(1,2) ) ) ) ) *[A(2,2),-A(1,2);
                        -A(2,1),A(1,1)],
x1_1 = A_1*B;



%x2 = A\B, % optymalne rozwiazywanie rown. Ax=b

% x3 = pinv(A)*b, % x = inv( A’*A ) * A’ * b , sprawdzisz?
%bhat = A*x1, % sprawdzenie
%err = max(abs(x1-x2)), % blad

inverse_matrix(A),

function A_1 = inverse_matrix(A)
    determinant = det(A);
    matrix_size = size(A,1);
    i=0;
    for i < matrix_size 
        x=12,
    end


end