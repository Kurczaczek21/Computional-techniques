close all; clear all;

syms x;
y = @(x) x^2;   % funkcja rozpatrywana

h = pi/8;   % wartosci h i okreslone x0 do obliczeń
x0 = pi/3;

xs = [x0-h, x0, x0+h],  % argumenty x-1 x0 i x1
ys = [y(x0-h), y(x0), y(x0+h)], % wartości dla powyższych argumentów y-1 y0 y1

a=1/3; b=4/3; c=1/3;    % wspolczynniki wzoru Simpsona
A = h*(a*ys(1) + b*ys(2) + c*ys(3)),    % policzenie A wzorem Simpsona


