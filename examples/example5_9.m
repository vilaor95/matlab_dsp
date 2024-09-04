clear;clc;close all

n = [0:1:10]; x = 10*(0.8).^n;

subplot(3,1,1); stem(n,x);

y = x(mod(-n,11)+1);

subplot(3,1,2); stem(n,y);

X = dft(x,11); Y = dft(y,11);

subplot(2,2,1); stem(n,real(X));
subplot(2,2,2); stem(n,imag(X));
subplot(2,2,3); stem(n,real(Y));
subplot(2,2,4); stem(n,imag(Y));
