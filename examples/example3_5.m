clear;clc;close all

n1 = -200;
n2 = 200;
M = n2 - n1;
k = [n1:n2];
w = (pi/100)*k;

n = [0:10];
x = (0.9*exp(j*pi/3)).^n;

X = x * (exp(-j*pi/100)).^(n'*k);

magX = abs(X); angX = angle(X);

subplot(2,1,1); plot(w/pi,angX/pi);
subplot(2,1,2); plot(w/pi, magX/pi);
