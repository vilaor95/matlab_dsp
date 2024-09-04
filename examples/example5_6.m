clear;clc;close all

n = [0:1:99]; x = cos(0.48*pi*n) + cos(0.52*pi*n);
n1 = [0:1:9]; y1 = x(1:1:10);

subplot(2,1,1); stem(n1,y1);

Y1 = dft(y1,10); magY1 = abs(Y1(1:1:6));

k1 = 0:1:5; w1 = 2*pi/10*k1;

subplot(2,1,2); stem(w1/pi,magY1);
