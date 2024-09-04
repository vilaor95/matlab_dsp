clear; clc; close all

dt = 0.00005; t = -0.005:dt:0.005;
xa = exp(-1000*abs(t));

subplot(5,1,1); plot(t,xa);

fs1 = 5000;
n1 = [t(1):1/fs1:t(end)]*fs1;
x1 = exp(-1000*abs(n1*1/fs1));

subplot(5,1,2); stem(n1,x1);

K = 500; k = -K:1:K; w = pi*k/(K*2);
X1 = x1 * exp(-j*n1'*w);

subplot(5,1,3); plot(w/pi,X1);

fs2 = 1000;
n2 = [t(1):1/fs2:t(end)]*fs2;
x2 = exp(-1000*abs(n2*1/fs2));

subplot(5,1,4); stem(n2,x2);

K = 500; k = -K:1:K; w = pi*k/(K*2);
X2 = x2 * exp(-j*n2'*w);

subplot(5,1,5); plot(w/pi,X2);


