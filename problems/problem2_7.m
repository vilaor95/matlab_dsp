clear;clc;close all

n = [0:10];
x = 10*exp((-0.1 + i*0.2*pi)*n);

[xe,xo,m] = conjugate(x,n);

subplot(2,2,1); stem(m,real(xe));
subplot(2,2,2); stem(m,imag(xe));
subplot(2,2,3); stem(m,real(xo));
subplot(2,2,4); stem(m,imag(xo));
