close all; clear all;

% Dane wejsciowe słonia
[e,fpr]=audioread('elephant.wav',[1,2^14]);

% Dane wejsciowe kanarka
[c,fpr]=audioread('canary.wav',[1,2^14]);

% Zsumowany dzwiek zwierząt
x = e + c;
N = length(x);

% Wykres wygnału wejsciowego
figure; plot(x); title('x(n)'); %n czas


% Transformacja liniowa/ortogonalna - ANALIZA
n = 0:N-1;
k = 0:N-1;
A = sqrt(2/N) * cos(pi/N * (k'*n));
% x = A(500,:) + A(1000,:); x = x'; -> to jest 1 podpunkt
y = A*x;
% wykres po transformacji ortogonalnej
figure; plot(y); title('y(k)'); %k czestotliwosc


% Modyfikacja wyniku
% Tu mozna wybrac zakres dolny i gorny
% Sam słoń to bedzie 1 do 3900 (znieksztalcony lekko)
% Sam kanarek to bedzie od 4000 do 9500
start = 3900; stop = 9500;

y(1:start-1,1) = zeros(start-1,1);
y(stop+1:N,1) = zeros(N-stop,1);
% Wykres po modyfikacji wyniku (manipulacji zakresem)
figure; plot(y); title('y(k)');


% Transformacja odwrotna - SYNTEZA
xback = A'*y;
% Wykres po syntezie
figure; plot(xback); title('xback(n)');
soundsc(x,fpr); pause
soundsc(xback,fpr);