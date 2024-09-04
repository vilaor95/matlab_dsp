clear;clc;close all

xtilde = 5*sin(0.1*pi*(0:19));

N = 40;
x2 = [xtilde -xtilde];
X2 = dft(x2, N);

subplot(2,2,1); stem(abs(X2));
subplot(2,2,2); stem(angle(X2));

x1 = [xtilde zeros(1,20)];
X1 = dft(x1,N);

subplot(2,2,3); stem(abs(X1));
subplot(2,2,4); stem(angle(X1));
