clear; close all;

C = readtable ('babia_gora.dat');
x1 =C.Var1;
x=rot90(x1);

y1=C.Var2;
y=rot90(y1);

z1=C.Var3;
z=rot90(z1);

zw=z(1,2),

xlin = linspace(min(x), max(x), 100);
ylin = linspace(min(y), max(y), 100);
[X,Y] = meshgrid(xlin, ylin);
% Z = griddata(x,y,z,X,Y,'natural');
% Z = griddata(x,y,z,X,Y,'cubic');
Z = griddata(x,y,z,X,Y,'v4');
mesh(X,Y,Z)
axis tight; hold on
plot3(x,y,z,'.','MarkerSize',15)

%rotation

referencePoint1 = [1;
                   1;
                   1];

plotOrigin([-500,500],[-500,500],[-500,500], [0,0,0]);
axis off;
plot3(referencePoint1(1),referencePoint1(2),referencePoint1(3), 'ok');

angle = 90 % in degrees

newPoint1 = rotateMatrix('z', angle) * referencePoint1;
plot3(newPoint1(1),newPoint1(2),newPoint1(3), 'ok');


