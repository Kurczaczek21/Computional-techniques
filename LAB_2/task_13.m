close all;
clear;
clc;

% 1a. przypadek gdy b^2 >> 4ac czyli a = 1, b = 100, c = 1
a1 = 1; b1 = 100; c1 = 1;
[x1,x2] = ulepszona(a1,b1,c1)
% 1b. ten sam przypadek ale normalnie liczone
[x1,x2] = normalna(a1,b1,c1)
% spoiler nie zgadza sie

% 2a. przypadek gdy miejsca zerowe sa  bardzo blisko siebie (podejrzane)
a2 = 1; b2 = 0; c2=0.0001;
[x1,x2] = ulepszona(a2,b2,c2)
% 2b. ten sam przypadek ale normalnie liczone
[x1,x2] = normalna(a2,b2,c2)
% spoiler wychodzi na to samo

% 3a. przypadek klasyczny normalny wynik
a3 = 2; b3 = 4; c3 = 2;
[x1,x2] = ulepszona(a3,b3,c3)
% 2b. ten sam przypadek ale normalnie liczone
[x1,x2] = normalna(a3,b3,c3)
% spoiler wychodzi na to samo bo liczby sa calkowite





function [x1 , x2] = ulepszona(a,b,c)
    delta = (b*b) - (4*a*c);
    x1 = ((-b) - sqrt(delta)) / (2*a);
    x2 = ((-b) - sqrt(delta)) / (2*a);

    if abs(x1) > abs(x2)
        x2 = (2*c) / (-b - sqrt(delta));
    else
        x1 = (2*c) / (-b - sqrt(delta));
    end
end

function [x1 , x2] = normalna(a,b,c)
    delta = (b*b) - (4*a*c);
    x1 = ((-b) - sqrt(delta)) / (2*a);
    x2 = ((-b) - sqrt(delta)) / (2*a);
end



