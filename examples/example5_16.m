clear;clc;close all

x1 = [1,2,2,1]; x2 = [1,-1,-1,1];

x3 = conv(x1,x2);
x4 = circonvt(x1,x2,length(x1)+length(x2)-1);

diff = x3 - x4

subplot(2,1,1); stem(x3);
subplot(2,1,2); stem(x4);
