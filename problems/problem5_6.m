clear;clc;close all

n1 = [0:1:49]; n2 = [50:1:99];

n = [n1 n2];
x = [n1+1 100-n2];

N1 = 10; k1 = 0:N1-1; w1 = 2*pi*k1/N1;
N2 = 200; k2 = 0:N2-1; w2 = 2*pi*k2/N2;

Y1 = dtft(x,n,w1);
Y2 = dtft(x,n,w2);

y1 = real(idft(Y1,N1));
y2 = real(idft(Y2,N2));

subplot(3,1,1); stem(x);
subplot(3,1,2); stem(y1);
subplot(3,1,3); stem(y2);
