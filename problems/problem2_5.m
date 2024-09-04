clc; clear; close all

n = [-100:100];
x = cos(0.1*pi*n);

subplot(2,1,1); stem(n, real(x));
subplot(2,1,2); stem(n, imag(x));

n = [-100:100];
x = cos(0.1*n);

close all; stem(n,x);
