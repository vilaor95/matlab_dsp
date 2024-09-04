clear;clc;close all

n = [-50:50];

x2 = sin(0.125*pi*n);

[y2,m2] = dnsample(x2,n,4);

subplot(2,2,1); stem(n,x2);
subplot(2,2,2); stem(m2,y2);

x3 = sin(0.5*pi*n);

[y3,m3] = dnsample(x3,n,4);

subplot(2,2,3); stem(n,x3);
subplot(2,2,4); stem(m3,y3);
