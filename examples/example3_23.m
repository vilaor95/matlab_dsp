clear; clc; close all

Ts = 0.0002; n = -25:25; nTs =  n*Ts; x = exp(-1000*abs(nTs));

subplot(2,1,1); stairs(nTs*1000,x); hold on
stem(n*Ts*1000,x); hold off

Ts = 0.001; n = -5:5; nTs =  n*Ts; x = exp(-1000*abs(nTs));

subplot(2,1,2); stairs(nTs*1000,x); hold on
stem(n*Ts*1000,x); hold off
