clear all; close all;

a=1; b=94234234234239; c=5;

d=sqrt(b^2-4*a*c);

x1 = (-b-d)/(2*a), %tradycyjny sposob
x2 = (-b+d)/(2*a),

if abs(x1) > abs(x2)    %wybieramy wieksza wartosc bezwzgl
    x1_new = x1;
    x2_new = 2*c / (-b-d);  %zmodyfikowany wiet, dokladniejszy wzor dla mniejszego
else
    x1_new = x2;
    x2_new = 2*c / (-b+d);
end

x1_new,x2_new,