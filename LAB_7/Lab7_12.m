syms x;
fun = @(x) cos(x);

%% wagi i węzły (dla 3 punktowej) mają być zgodne z tymi wyprowadzonymi dla kwadratury Gaussa-Legendra
nodes3 = [-sqrt(3/5), 0, sqrt(3/5)];
wages3 = [5/9, 8/9, 5/9];         % mniejszy blad

%% wagi i węzły (dla 2 punktowej) jak w zadaniu wyżej
nodes2 = [-1/sqrt(3) , 1/sqrt(3)];
wages2 = [1 , 1];

%% granice całek
a = -pi/2;
b = pi/2;

%% normalnie matlabowo liczona całeczka
field_corr = integral(fun, a, b),

%% obliczenia analiza 3punktowa
N = 3;
field = 0;

for k=1:N
   field = field + wages3(k)*fun( (a+b)/2 + ((b-a)/2)*nodes3(k));
end

field = field * (b-a)/2,
err = abs(field - field_corr),
%% obliczenia analiza 2punktowa
N = 2;
field = 0;

for k=1:N
   field = field + wages2(k)*fun( (a+b)/2 + ((b-a)/2)*nodes2(k));
end

field = field * (b-a)/2,
err = abs(field - field_corr),
%% otrzymane wyniki dla sinus w przedziale (0 , pi):
% field_corr = 2.0000
%% 3punktowa analiza (POPRAWNE, LEPSZY WYNIK)
% field = 2.0014, error = 0.0014
%% 2punktowa analiza
% field = 1.9358, error = 0.0642
%%
%% otrzymane wyniki dla cosinus w przedziale (-pi/2 , pi/2):
% field_corr = 2.0000
%% 3punktowa analiza (POPRAWNE, LEPSZY WYNIK)
% field = 2.0014, error = 0.0014
%% 2punktowa analiza
% field = 1.9358, error = 0.0642


