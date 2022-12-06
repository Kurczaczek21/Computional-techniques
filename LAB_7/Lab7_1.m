syms x;
%% funkcja rozpatrywana
y = @(x) sin(x);
%% wartosci h i okreslone x0 do obliczeń
h = pi/8;
x0 = pi/8;
%% argumenty x-1 x0 i x1
xs = [x0-h, x0, x0+h],
%% wartości dla powyższych argumentów y-1 y0 y1
ys = [y(x0-h), y(x0), y(x0+h)],
%% rozwiązanie zadanie i policzenie A wzorem Simpsona
% wspolczynniki wzoru Simpsona
a=1/3; b=4/3; c=1/3;
A = h*(a*ys(1) + b*ys(2) + c*ys(3)),

% w x=0 wielomianemstopnia 1 bo najblizej zera y=x