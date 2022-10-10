clear all; close all;
echo on

%surface total
s=200,
syms r,
v=1/2*(s*r-2*pi*r^3),
dy=diff(v,'r'),

R = sqrt(s/(6*pi)),
H =2*R,
V =(s/3)*R,


whos

