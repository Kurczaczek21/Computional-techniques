close all;
echo on

a=fi( 141,0,8,0); a.bin,
b = fi( 115,0,8,0), b.bin,
c=fi( 115,1,8,0), c.bin, %unsignednie widzi "-"
d=fi(-115,1,8,0), d.bin, %signed widzi znak wiec inny wynik

bday=fi(9,0,8,0); bday.bin,
bday2=fi(9,0,16,0); bday2.bin,
bday3=fi(9,1,8,0); bday3.bin,
bday4=fi(9,1,16,0); bday4.bin,

whos