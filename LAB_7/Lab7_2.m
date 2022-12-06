syms f(x)

%% wartosci i zmienne
points = [0 pi/8 pi/4]; % równoodlegle punkty dla sinusa
%points = [1 2 3]; % równoodległe punkty
h = points(2) - points(1), % h liczymy z różnicy bo są równoodległe
values = zeros(3,2); % górny rząd to punkty, dolny to y(punkt)
%% funkcje ( zostaw jedno niezakomentowane i to bedzie sprawdzane)
f(x) = sin(x);
%f(x) = 2*x^2 + x + 0.5; % sprawdzana funkcja 2
%f(x) = 3*x^2 + 2*x^2 + x + 0.5 % sprawdzana funkcja 2 z dod składnikiem
%% pochodne i miejsca na nie
testDerivatives = [0 0 0]; % miejsce na testowane pochodne
py=diff(f(x)); % pochodna f(x)
trueDerivatives = [0 0 0]; % miejsce na prawdziwe pochodne
%% obliczenia
for i=1:3 % tyle razy ile mamy punktow
    values(i,1) = points(i); % cały rząd wypełnia punktami
    values(i,2) = f(points(i)); % cały rząd wypełnia wartosciami w tych punktach
    % jak działa subs?
    % subs (a + b, a, 4) wymieni a -> a, b -> 4 :
    % czyli wynik to bedzie b + 4 
    trueDerivatives(i) = subs(py, x, points(i));
     % no to tu w pochodnej f(x) wymieniamy x na kolejne punkty
     % czyli liczymy poprostu pochodą w kazdym punkcie
     % i zapisujemy w trueDerivatives
end

% teraz obliczamy te testowe Derivatives ze wzorów
% czyli pochodne w każdym punkcie ze wzorów z wykładu
testDerivatives(1) = 1/(2*h) * (-3*values(1,2) + 4*values(2,2) - values(3,2));
testDerivatives(2) = 1/(2*h) * (values(3,2) - values(1,2));
testDerivatives(3) = 1/(2*h) * (values(1,2) - 4*values(2,2) + 3*values(3,2));
%% wyniki
% wypisujemy i patrzymy czy różnią się od oryginalnych
% obliczając ERROR
testDerivatives,
trueDerivatives,
error = testDerivatives - trueDerivatives,