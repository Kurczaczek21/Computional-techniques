clear all; close all;
echo on

%TASK 1.3

%surface total
s=200,
syms r,
r=1:0.05:5, %kroki co 0.05 od 1 do 5
v=1/2*(s*r-2*pi*r.^3),
plot(r,v),  %rysowanie wykresu
%dy=diff(v,'r'),

R = sqrt(s/(6*pi)),
H =2*R,
V =(s/3)*R,


whos

