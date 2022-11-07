close all; clear all;

% Dane wejsciowe
[x,fpr]=audioread('mowa.wav',[1,2^14]);
N = length(x);
% Wykres wygnału wejsciowego
figure; plot(x); title('x(n)');


% Transformacja liniowa/ortogonalna - ANALIZA
n = 0:N-1;
k = 0:N-1;
A = sqrt(2/N) * cos(pi/N * (k'*n));
% x = A(500,:) + A(1000,:); x = x'; -> to jest 1 podpunkt
y = A*x;
% wykres po transformacji ortogonalnej
figure; plot(y); title('y(k)');


% Modyfikacja wyniku
% y(N/8+1:N,1) = zeros(7*N/8,1) -> to było wczesniej;
% Tu mozna wybrac zakres dolny i gorny
start = 3001; stop = 8999;

y(1:start-1,1) = zeros(start-1,1);
y(stop+1:N,1) = zeros(N-stop,1);
% y(1000)=0; -> to jest podpunkt 2
% Wykres po modyfikacji wyniku (manipulacji zakresem)
figure; plot(y); title('y(k)');


% Transformacja odwrotna - SYNTEZA
xback = A'*y;
% Wykres po syntezie
figure; plot(xback); title('xback(n)');
soundsc(x,fpr); pause
soundsc(xback,fpr);
