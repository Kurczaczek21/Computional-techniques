clear all; close all;

A = [ 1 2;3 4 ];
B = [ 5; 11 ];

x1 = inv(A)*B; %#ok<MINV> % x=A^(-1)*b
x2 = A\B; % optymalne rozwiazywanie rown. Ax=b
% podpunkt 1
A_1 = (1/( (A(1,1)*A(2,2) ) - ((A(2,1))*(A(1,2) ) ) ) ) *[A(2,2),-A(1,2);
                        -A(2,1),A(1,1)];
x3 = A_1*B;


% podpunkt 2
inverse_matrix(A);

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