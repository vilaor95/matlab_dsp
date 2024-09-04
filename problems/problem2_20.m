clear;clc;close all

n = [0:25];

b = [1,-1]; a = [1];

x1 = 5*(stepseq(0,0,25)-stepseq(20,0,25));
x2 = n.*(stepseq(0,0,25)-stepseq(10,0,25)) + (20-n).*(stepseq(10,0,25)-stepseq(20,0,25));

n = [0:100];
x3 = sin(pi*n/25).*(stepseq(0,0,100) - stepseq(100,0,100));

y1 = filter(b,a,x1);
y2 = filter(b,a,x2);
y3 = filter(b,a,x3);

subplot(3,1,1); stem(y1);
subplot(3,1,2); stem(y2);
subplot(3,1,3); stem(y3);
