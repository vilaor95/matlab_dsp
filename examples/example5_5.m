clear;clc;close all

N = 40; k = 0:1:N-1;

wk =  2*pi*k/N; zk = exp(j*wk);
Xk = (zk)./(zk-0.7);

xn = real(idfs(Xk,N));

xtilde = xn' *ones(1,8); xtilde = (xtilde(:))';
stem(0:39,xtilde);
