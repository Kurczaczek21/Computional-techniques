clear all; close all;

% Input data from file to matrix
A = load('babia_gora.dat');

% Drawing default mountain
draw(A, 0, 0, 0);

% Here you can change rotation degrees
xDegrees = 0;
yDegrees = 180;
zDegrees = 0;

% Using rotation matrix for every case
A = A * rotateMatrix('x', xDegrees);
A = A * rotateMatrix('y', yDegrees);
A = A * rotateMatrix('z', zDegrees);

% Drawing a rotated mountain
draw(A, isOddMultipleOf90(xDegrees), isOddMultipleOf90(yDegrees), zDegrees ~=0);
