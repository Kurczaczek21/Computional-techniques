close all; clear all;

[slon,fpr]=audioread('elephant.wav',[1,2^14]);
[kanar,fpr]=audioread('canary.wav',[1,2^14]);

x = slon+kanar;
N = length(x);

%syg wejsciowy
figure; plot(x); title('x(n)'); %n czas


%A to jest macierz ortogonalna 
% Mnożenie ścieżki dźwiękowej, przez A daje nam widmo częstotliwościowe.
% 
% Transformacja liniowa/ortogonalna - ANALIZA
n = 0:N-1; k = 0:N-1;
A = sqrt(2/N) * cos(pi/N * (k'*n));
% x = A(500,:) + A(1000,:); x = x'; -> 1 podpunkt
y = A*x;
% wykres po transformacji ortogonalnej
figure; plot(y); title('y(k)'); %k czestotliwosc


% Modyfikacja wyniku -> 2
% Sam słoń 1 do 3900 
% Sam kanarek 4000 do 9500
start = 4000; stop = 9500;

y(1:start-1,1) = zeros(start-1,1);
y(stop+1:N,1) = zeros(N-stop,1);
% Wykres po modyfikacji wyniku (manipulacji zakresem)
figure; plot(y); title('y(k)');


% Transformacja odwrotna - SYNTEZA -> 3
xback = A'*y;
% Wykres po syntezie
figure; plot(xback); title('xback(n)');
soundsc(x,fpr);
soundsc(xback,fpr);