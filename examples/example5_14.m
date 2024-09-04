clear;clc;close all

x1 = [1 2 2]; x2 = [1 2 3 4];

y = circonvt(x1,x2,4)

y5 = circonvt(x1,x2,5)
y6 = circonvt(x1,x2,6)

yconv = conv(x1,x2)

subplot(4,1,1); stem(y);
subplot(4,1,2); stem(y5);
subplot(4,1,3); stem(y6);
subplot(4,1,4); stem(yconv);
