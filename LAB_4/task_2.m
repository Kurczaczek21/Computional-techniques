clear all; close all;

%A = [5 32 -3;
%    10 -5 21;   % nie zadziała bo macierz
%    31 2 -1];   % NIE JEST symetryczna i NIE ma dod wartosci
%                 wyznacznikow 1,2,3

A = [2 -1 0;
    -1 2 1;
    0 -1 2];

det(A),

U = chol(A),
[U,L] = myLu(A),

function [L,U] = myLu(A)
[N,N] = size(A);
   L = eye(N);
   for j=1:N
       value=0;
       for k=1:j-1
           value = value + L(j,k)*L(j,k);
       end
       L(j,j) = sqrt(A(j,j) - value);
       for i=j+1:N
           value = 0;
           for k=1:j-1
               value = value + L(i,k)*L(j,k);
           end
           L(i,j) = (1/L(j,j)) * (A(i,j) - value);
       end
   end
   U = L.';
end
