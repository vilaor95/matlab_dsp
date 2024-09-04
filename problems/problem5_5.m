clear;clc;close all

xtilde = [5*sin(0.1*pi*(0:19)) zeros(1,20)];

N3 = 80;
x3 = [xtilde xtilde];
X3 = dft(x3, N3);

subplot(2,2,1); stem(abs(X3));
subplot(2,2,2); stem(angle(X3));

N2 = 80;
x2 = [5*sin(0.1*pi*(0:19)) zeros(1,60)];
X2 = dft(x2,N2);

subplot(2,2,3); stem(abs(X2));
subplot(2,2,4); stem(angle(X2));
