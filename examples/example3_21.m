clear; clc; close all

dt = 0.00005; t = -0.005:dt:0.005;
xa = exp(-1000*abs(t));

fs1 = 5000;
n1 = [t(1):1/fs1:t(end)]*fs1;
x1 = exp(-1000*abs(n1*1/fs1));

nTs = n1*1/fs1;

xr = x1 * sinc(fs1*(ones(length(n1),1)*t-nTs'*ones(1,length(t))));

error = max(abs(xr - xa))

plot(t,xa); hold on;
stem(t,xr);
