clear;clc;close all

n = [-5:1:5];
xtilde = 2*exp(-0.9*abs(n)); N = length(xtilde);

x = [xtilde zeros(1,201-N)];

N = length(x);

X = dft(x,N); X = real(X);

w = linspace(-pi,pi,N); X = fftshift(X);

stem(w/pi,X);
