% pierwszy argument to funkcja
% drugi argument to ilosc wielomianow (wiecej = dokladniej)


fun = @(x) 1./(1 + x.^2);

f1 = @() Czebyszew(fun, 5);
timeit(f1)
f1();

figure;
syms x;

f2 = @() fplot(pade(1./(1 + x.^2)));
timeit(f2)
xlim([-1 1])
ylim([0.5 1])