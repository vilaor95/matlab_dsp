clear; clc; close all

dt = 0.00005; t = -0.005:dt:0.005;
xa = exp(-1000*abs(t));

subplot(2,1,1); plot(t*1000,xa);

Wmax = 2*pi*2000; K = 500; k = 0:1:K; W = k*Wmax/K;
Xa = xa * exp(-j*t'*W) * dt; Xa = real(Xa);

W = [-fliplr(W),W(2:501)];
Xa = [fliplr(Xa),Xa(2:501)];

subplot(2,1,2); plot(W/(2*pi*1000),Xa*1000);
