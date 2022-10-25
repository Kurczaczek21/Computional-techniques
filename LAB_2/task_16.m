clear all; close all;
% 2.16
a= 0.5;
b= 1; 
c = 0.490;
cond = b/(sqrt(b^2-(4*a*c))),

a = 0.5; 
b = 1 + 0.001*randn(1,1000);
c = 0.490;
suma=[];
sumacond=[];
for i = 1:size(b, 2)
   x1 = (-b(i)-sqrt(b(i)^2-(4*a*c)))/(2*a);
   cond1 = b(i)/(sqrt(b(i)^2-(4*a*c)));
   suma(end+1) = x1; % KEYWORD
   sumacond(end+1) = cond1;
end
disp("dla c="+c);
% Wyswietlanie sredniej i odchylenia standardowego rozwiazan rownania
disp("srednia rozwiazan: " + mean(suma)),
disp("odchylenie rozwiazan: " + std(suma)),
% Wyswietlanie sredniej i odchylenia standardowego uwarunkowan
disp("srednia uwarunkowan: " + mean(sumacond)),
disp("odchylenie uwarunkowan: " + std(sumacond)),

%INNE c
c=0.001;
suma1=[];
sumacond1=[];
for i = 1:size(b, 2)
   x1 = (-b(i)-sqrt(b(i)^2-(4*a*c)))/(2*a);
   cond1 = b(i)/(sqrt(b(i)^2-(4*a*c)));
   suma1(end+1) = x1; % KEYWORD
   sumacond1(end+1) = cond1;
end
disp("dla c="+c);
% rownanie
disp("srednia rozwiazan: " + mean(suma1)),
disp("odchylenie rozwiazan: " + std(suma1)),
% uwarunkowanie
disp("srednia uwarunkowan: " + mean(sumacond1)),
disp("odchylenie uwarunkowan: " + std(sumacond1)),

%INNE c
c=0.500;
suma2=[];
sumacond2=[];
for i = 1:size(b, 2)
   x1 = (-b(i)-sqrt(b(i)^2-(4*a*c)))/(2*a);
   cond1 = b(i)/(sqrt(b(i)^2-(4*a*c)));
   suma2(end+1) = x1; % KEYWORD
   sumacond2(end+1) = cond1;
end
disp("dla c="+c),
% Wyswietlanie sredniej i odchylenia standardowego rozwiazan rownania
disp("srednia rozwiazan: " + mean(suma2)),
disp("odchylenie rozwiazan: " + std(suma2)),
% Wyswietlanie sredniej i odchylenia standardowego uwarunkowan
disp("srednia uwarunkowan: " + mean(sumacond2)),
disp("odchylenie uwarunkowan: " + std(sumacond2)),