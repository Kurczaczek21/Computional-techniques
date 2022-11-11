% equnonlin_invmat.m
% A*x = b, x=?
clear all; close all;

A = [ 1 2;3 4 ];
B = [ 5; 11 ];

x1 = inv(A)*B; % x=A^(-1)*b
A_1 = (1/( (A(1,1)*A(2,2) ) - ((A(2,1))*(A(1,2) ) ) ) ) *[A(2,2),-A(1,2);
                        -A(2,1),A(1,1)];
x1_1 = A_1*B;



%x2 = A\B, % optymalne rozwiazywanie rown. Ax=b

% x3 = pinv(A)*b, % x = inv( A’*A ) * A’ * b , sprawdzisz?
%bhat = A*x1, % sprawdzenie
%err = max(abs(x1-x2)), % blad
inv(A),
inverse_matrix(A),

function [A_1] = inverse_matrix(A)
    AD = zeros(size(A));
    for i = 1 : size(AD)
        for j = 1: size(AD)
            minor = A;
            minor(i,:)=[]; minor(:,j)=[];
            AD(i,j) = ((-1)^(i+j))*det(minor);
        end
    end
    A_1 = (1/det(A))*(AD.')
end