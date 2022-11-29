function [f] = Czebyszew2(pol_num)
    if pol_num == 0
        syms x;
        f = 1;
    elseif pol_num == 1     
        syms x;
        f = x;
    else
       syms x;
       f = 2*x*Czebyszew2(pol_num-1) - Czebyszew2(pol_num-2);
    end
end

% C0 (x) = 1,                   |
% C1 (x) = x,                   | -> wzor 6.35 i tyle
% Cn+1 (x) = 2xCn (x)−Cn−1 (x). |