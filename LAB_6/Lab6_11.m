% program ma przybliżać matlabową funkcję erf(x)
x = -1 : 0.1 : 1;
y = erf(x);
plot(x,y,'k--');
hold on
% prosciej Czybyszew(@(x)erf(x),8)


% ułożenie równania samemu
% najpierw trzeba policzyć całke
syms x t
% wyrażenie podcałkowe
wyrazenie = exp(-t.^2);

% jakis przedział x:
x2 = -1 : 0.1 : 1;

% okreslenie jak wyglada cała funkcja
y2 = (2 / sqrt(pi)) * int(wyrazenie,[0,x]);
% fplot(y2,'b'); -> tym można wyswietlić naszą funkcje
% wyświetla sie normalnie ale nie moge zastosować na niej metody

% teraz przybliżanie metodą z poprzedniego zadania
Czybyszew((2 / sqrt(pi)) * int(wyrazenie,[0,x]),8);