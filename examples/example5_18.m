clear;clc;close all

N = 6;

n = [0:1:9]; x = n + 1;
h = [1,0,-1];

x1 = [0 0 1 2 3 4];
x2 = [3 4 5 6 7 8];
x3 = [7 8 9 10 0 0];

y1 = circonvt(x1,h,N)
y2 = circonvt(x2,h,N)
y3 = circonvt(x3,h,N)

y = [y1(3:end) y2(3:end) y3(3:end)]

yconv = conv(x,h)

yovrlp = ovrlpsav(x,h,N)


