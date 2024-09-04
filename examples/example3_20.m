clear;clc;close all

fs = 200;

t = [0:0.0005:0.1];
xa = 4 + 2*cos(150*pi*t +pi/3) + 4*sin(350*pi*t);

%sampling
n = [t(1):1/fs:t(end)]*fs;
xn = 4 + 2*cos(150*pi*n/fs + pi/3) + 4*sin(350*pi*n/fs);

K = 500; k = [-K:K]; w = pi*k/(K);
Xa = xa * exp(-j*t'*w);
Xn = xn * exp(-j*n'*w);

subplot(3,2,1); plot(t,xa);
subplot(3,2,2); plot(w/pi,Xa);
subplot(3,2,3); stem(n,xn);
subplot(3,2,4); plot(w/pi,Xn);

% reconstruction

