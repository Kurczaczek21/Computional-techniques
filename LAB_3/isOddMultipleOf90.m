% function which checks whether the (n) is
% 90 or 270 basically

function [result] = isOddMultipleOf90(n)
    n = abs(n);
    if n == 90 || n == 270
        result = 1;
    else
        result = 0;
    end

end

