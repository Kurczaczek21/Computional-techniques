clear; close all;

C = readtable ('babia_gora.dat');
x1 =C.Var1;
x=rot90(x1);

y1=C.Var2;
y=rot90(y1);

z1=C.Var3;
z=rot90(z1);

zw=z(1,2);

xlin = linspace(min(x), max(x), 100);
ylin = linspace(min(y), max(y), 100);
[X,Y] = meshgrid(xlin, ylin);
% Z = griddata(x,y,z,X,Y,'natural');
% Z = griddata(x,y,z,X,Y,'cubic');
Z = griddata(x,y,z,X,Y,'v4');
mesh(X,Y,Z)
axis tight; hold on
plot3(x,y,z,'.','MarkerSize',2)

%rotation


