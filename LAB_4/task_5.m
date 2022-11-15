clear all; close all;

A = [ 1 2;3 4 ];
B = [ 5; 11 ];

x1 = inv(A)*B; % x=A^(-1)*B
x2 = A\B; % optymalne rozwiazywanie rown. Ax=b najlepsze
% podpunkt 1
A_1 = (1/( (A(1,1)*A(2,2) ) - ((A(2,1))*(A(1,2) ) ) ) ) *[A(2,2),-A(1,2);
                        -A(2,1),A(1,1)];
x3 = A_1*B; % x=A^(-1)*B


% podpunkt 2

C = [2 -1 0;
    -1 2 1;
    0 -1 2];

inv(C),
inverse_matrix(C),

function [A_1] = inverse_matrix(A)
    AD = zeros(size(A));
    for i = 1 : size(AD)
        for j = 1: size(AD)
            minor = A;
            minor(i,:)=[]; minor(:,j)=[];
            AD(i,j) = ((-1)^(i+j))*det(minor);
        end
    end
    A_1 = (1/det(A))*(AD.');
end