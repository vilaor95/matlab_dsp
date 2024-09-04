clear;clc;close all

[delta,n] = impseq(0,0,100);
a = [1,-0.5,0.25,]; b = [1,2,0,1];
h = filter(b,a,delta);

subplot(2,1,1); stem(h);

%%

n = [0:200];
x = 5 + 3*cos(0.2*pi*n) + 4*sin(0.6*pi*n);

y = filter(b,a,x);

subplot(2,1,2); stem(y);
