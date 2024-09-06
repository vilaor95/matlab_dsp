clear;clc;close all

r = 3;
c = 1;

n = [0:1:100];
x = sinc((n-50)/2).^2; N = length(x);

subplot(r,c,1); stem(n,x);

X = dft(x,N);

magX = abs(X); phaX = angle(X)*180*pi;

zei = find(magX < 0.00001); phaX(zei) = zeros(1,length(zei));

subplot(r,c,2); stem(magX);
subplot(r,c,3); stem(phaX);
