%% opis co my wgl robimy
% metoda Jakobiego pozwala nam na wyznaczenie wektorów i wartości
% własnych, czyli w skrócie na dokonanie diagonalizacji macierzy
% musi być ona symetryczna i równych rozmiarów
% nazywamy to też ROTACJĄ PRZEZ PODOBIEŃSTWO
% na koniec porównamy to z funkcją matlabową żeby zobaczyć czy działa
%% czyszczonko
clear all; close all; clc;
%% rozmiar macierzy
SIZE=4;
%% tworzymy losową macierz SYMETRYCZNĄ o zadanym SIZE
M = tril(randi([0 9],SIZE));
A = M + M'; % poprostu dodajemy trojkątną dolną i górną

% A = [ 2 0 1; 0 -2 0; 1 0 2 ];
% link do wikipedii: https://en.wikipedia.org/wiki/Jacobi_eigenvalue_algorithm
% A=[4 -30 60 -35; -30 300 -675 420; 60 -675 1620 -1050; -35 420 -1050 700]; % z wikipedii

Ai=A;
[N,N]=size(A);
flag=0;
A,
%% macierz ortogonalna R
R=diag(ones(N,1));

while ~isdiag(Ai)   
    %% znajdowanie indeksu maksymalnej wartosci pozadiagonalnej
    temp=abs(triu(Ai,1));
    m=max(temp,[], 'all');
    [p,q]=find(temp==m);
    p=p(1); q=q(1); % to są te znalezione już indexy
    %% liczenie sinusów i cosinusów do macierzy obrotu
    ksi = (Ai(q,q)-Ai(p,p)) / (2*Ai(p,q));
    if( ksi > -eps ) 
        t = (abs(ksi) + sqrt(1+ksi^2));
    else 
        t = -(abs(ksi) + sqrt(1+ksi^2));
    end
    c = 1 / sqrt(1+t^2); % cosinus Theta
    s = t * c; % sinus Theta
    %% kolejne przeksztalcenia macierzy Ai aż do otrzymania diagonalnej
    R1 = eye(N);
    R1(p,p) = c; R1(q,q) = c;
    R1(p,q) = -s; R1(q,p) = s;
    R1; 
    Ai = R1.' * Ai * R1;
    R=R*R1;
    Ai(p,q)=0; Ai(q,p)=0; 
    Ai(abs(Ai)<10e-10)=0; % zeby wyzerowalo wartosci bardzo bliskie zeru
                          % te ktore powinny byc zerami
end
%% tutaj nasze wyniki Ai -> macierz wartości własnych, R -> macierz rotacji
Ai,R,
%% wypisujemy za pomocą funkcji eig() D-> wartości własne, V -> wektory własne
% to jest zywczajnie do porównania z otrzymanymi w wyniku rotacji itp itd
[V,D]=eig(A),
% jak widać dla przykładów losowych otrzymujemy te same:
% wartości własne i wektory własne
% tylko w innej kolejności troche ale to nie szkodzi wyjebane