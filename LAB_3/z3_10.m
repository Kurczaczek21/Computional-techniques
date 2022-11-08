clear all; close all;

A = load('babia_gora.dat');

draw(A, 0, 0, 0);

xDegrees = 0;
yDegrees = 0;
zDegrees = 90;

A = A * rotateMatrix('x', xDegrees);
A = A * rotateMatrix('y', yDegrees);
A = A * rotateMatrix('z', zDegrees);

draw(A, isOddMultipleOf90(xDegrees), isOddMultipleOf90(yDegrees), zDegrees ~=0);
