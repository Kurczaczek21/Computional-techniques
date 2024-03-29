clear all;close all;
load("babia_gora.dat");

size(babia_gora)
figure;grid;plot3(babia_gora(:,1),babia_gora(:,2),babia_gora(:,3),'b.');pause

a = 1; b = 1; c = 444;  %wspolczynniki przy macierzy jednostkowej
S = [a,0,0;0,b,0;0,0,c];    %czyli ile razy mnozymy dany element
XS = S*babia_gora';
figure; grid; plot3( XS(1,:), XS(2,:), XS(3,:), 'b.' );

x = 100; y = 420; z = 1600; %wartość translacji czyli dodawanie
T = zeros(121, 3);  %macierz samych zer o tych samych wymiarach
T (:,1) = x; T (:,2) = y; T (:,3) = z;

XT = T+babia_gora;
figure; grid; plot3( XT(:,1), XT(:,2), XT(:,3), 'b.' );%rysunek translacji

XX = babia_gora*S'+T;
figure; grid; plot3( XX(:,1), XX(:,2), XX(:,3), 'b.' );