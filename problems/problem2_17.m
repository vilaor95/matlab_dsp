clear;clc;close all

x = [1:5];
h = [6:9];

y = conv(x,h);

subplot(3,1,1); stem(y);

%%

hc = [h';zeros(length(x)-1,1)];
hr = [h(1),zeros(1,5-1)];
H = toeplitz(hc,hr);

y2 = H*x';

subplot(3,1,2); stem(y2);

%%

[y3,H3] = conv_tp(h',x');

subplot(3,1,3); stem(y3);
