 a=fi( 11.25,0,8,4), a.bin,
 b=fi( 4.75,0,8,4), b.bin,
 c=fi( 4.75,1,8,4), c.bin,
 d=fi(-4.75,1,8,4), d.bin,
% niedokladne po .14
a = fi(pi,0,8,6), a.bin,
blad_a = pi - 3 - double.a;
% zmierza do 2, bo 1 bit zarezerwowany na znak
b = fi(pi,1,8,6), b.bin,
blad_b = pi - 3 - double.b;
% dokladne do .1416
c = fi(pi,0,16,12), c.bin,
blad_c = pi - 3 - double.c;
d = fi(pi,1,16,12), d.bin,
blad_d = pi - 3 - double.d;