clear;clc;close all

w = [0:1:500]*pi/500;

X = (exp(j*w))./(exp(j*w)-0.5*ones(1,length(w)));

magX = abs(X); angX = angle(X); realX = real(X); imagX = imag(X);

subplot(2,2,1); plot(w/pi,magX); grid
subplot(2,2,2); plot(w/pi,angX); grid
subplot(2,2,3); plot(w/pi,realX); grid
subplot(2,2,4); plot(w/pi,imagX); grid
