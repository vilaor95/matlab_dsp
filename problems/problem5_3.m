clear;clc;close all

N1 = 40;
x1 = [5*sin(0.1*pi*(0:19)) zeros(1,20)];
X1 = dft(x1,N1);

subplot(2,2,1); stem(abs(X1));
subplot(2,2,2); stem(angle(X1));

N2 = 80;
x2 = [5*sin(0.1*pi*(0:19)) zeros(1,60)];
X2 = dft(x2,N2);

subplot(2,2,3); stem(abs(X2));
subplot(2,2,4); stem(angle(X2));
