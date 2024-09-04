clear;clc;close all

n = [-1:3];
x = [1:5];

k = [0:500]; w = (pi/500)*k;

X = x * (exp(-j*pi/500)).^(n'*k);

magX = abs(X); angX = angle(X);
realX = real(X); imagX = imag(X);

subplot(2,2,1); plot(w/pi,magX);
subplot(2,2,2); plot(w/pi,realX);
subplot(2,2,3); plot(w/pi,angX);
subplot(2,2,4); plot(w/pi,imagX);
