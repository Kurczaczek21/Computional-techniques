% użyje napisanej przeze mnie funkcji aproxymującej
% używającej metodę Czybyszewa:
% pierwszy argument to funkcja
% drugi argument to ilosc wielomianow (wiecej = dokladniej)

fun = @(x) 1./(1 + x.^2);

f1 = @() Czybyszew(fun, 5);
timeit(f1)
%f1();

figure;

f2 = @() fplot(pade(1./(1 + x.^2)));
timeit(f2)