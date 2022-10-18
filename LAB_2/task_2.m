%a=fi( 1.625,0,8,7), a.bin,
%b=fi( 0.375,0,8,7), b.bin,
%c=fi( 0.375,1,8,7), c.bin,
%d=fi(-0.375,1,8,7), d.bin,
disp(pi)
% te nie sa dokladne po .14
a = fi(pi - 3, 0, 8, 7); a.bin;
b = fi(pi - 3, 1, 8, 7), b.bin;
%te sa dokladne ".1416
c = fi(pi - 3, 0, 16, 15), c.bin;
d = fi(pi - 3, 1, 16, 15), d.bin;