function P = Czybyszew(f,n)
    k = 1:n+1;
    X = cos((2*k-1) * pi / (2*(n+1))); % wzor 6.34 z wykladu
    Y = f(X);
    
    P = polyfit(X, Y, n);
    fplot(f,[-1,1],'r'); % oryginalna funkcja
    hold on;
    plot(X,Y,'o','MarkerFaceColor','k'); % punkty Czebyszewa

    x = linspace(-1, 1, 200);
    y = polyval(P,x);
    plot(x,y,'k--'); % dopasowany wielomian Czebyszewa

    legend('oryginalna funkcja','punkty Czebyszewa', 'dopasowany wielomian Czebyszewa');
end