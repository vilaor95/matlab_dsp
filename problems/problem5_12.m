clear;clc;close all

n = 0:9; N = length(n);
x = exp(0.9*n);

X = dft(x,N);

subplot(3,1,1); stem(n,x);
subplot(3,1,2); stem(X);

x1 = dft(X,N);

subplot(3,1,3); stem(n,x1);

x1 = [1 3 5 7 9 -7 -5 -3 -1]
xc = circfold(x1,length(x1))

figure;
stem(xc);
