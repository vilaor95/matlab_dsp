clear;clc;close all

n = [0:1:10]; x = 10*(0.8) .^ n;

y = cirshiftt(x,6,15);

subplot(2,1,1); stem(n,x);
subplot(2,1,2); stem([0:1:14],y);
