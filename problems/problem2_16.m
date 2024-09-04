clear;clc;close all

n = [0:50];

x = (0.8).^(n);
h = (-0.9).^(n);

[y,ny] = conv_m(x,n,h,n);

subplot(3,1,1); stem(ny,y);

%%

x2 = x(1:26);
h2 = h(1:26);

y2 = conv(x2,h2);

subplot(3,1,2); stem(n,y2);

%%

y3 = filter([1],[1,0.9],x);

subplot(3,1,3); stem(n,y3);

