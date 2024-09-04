clear; clc; close all

Ts = 0.0002; n = -25:25; nTs =  n*Ts; x = exp(-1000*abs(nTs));

dt = 0.00005; t = -0.005:dt:0.005; xa = spline(nTs,x,t);

error = max(abs(xa - exp(-1000*abs(t))))
