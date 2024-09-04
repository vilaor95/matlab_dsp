clear;clc;close all

n = [0:1:10]; x = 10*(0.8).^n;

subplot(3,1,1); stem(n,x);
subplot(3,1,2); stem(n,cirshiftt(x,length(x)-4,length(x)));

n = [0:1:14];
subplot(3,1,3); stem(n,cirshiftt(x,3,15));
