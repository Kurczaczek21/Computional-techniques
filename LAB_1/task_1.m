clear all; close all;
echo on

% TASK 1.1.1
%radius
r=10;

%surf
S=pi*(r^2),
%circle
O=2*pi*r,

% TASK 1.1.2

sv=4*pi*(r^2),
v=4/3*pi*(r^3),

% TASK 1.2

a=1;
b=5;
c=6;

%delta
d=b^2-4*a*c,
if d>0
    p1=(-b-sqrt(d))/2*a;
    p2=(-b+sqrt(d))/2*a;
elseif d==0
    p0=-b/(2*a);
else
    msg='brak miejsc zerowych dla podanych parametrow'
    error(msg);
end

%check
check1=a*p1^2+b*p1+c,
check2=a*p2^2+b*p2+c,

whos