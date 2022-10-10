clear all; close all;
echo on

%1.1.1
%radius
r=10;

%surf
p=pi*(r^2),
%circle
o=2*pi*r,

%1.1.2

sv=4*pi*(r^2),
v=4/3*pi*(r^3),

%1.2.1

a=1;
b=5;
c=6;

%delta
d=b^2-4*a*c,

p1=(-b-sqrt(d))/2*a,
p2=(-b+sqrt(d))/2*a,

%check
check=a*p1^2+b*p1+c,

%1.2.1
%test still sry
whos