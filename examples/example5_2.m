clear;clc;close all

L = 7;
N = 60;
k = [-N/2:N/2];

xn = [ones(1,L), zeros(1,N-L)];

Xk = dfs(xn,N);

magXk = abs([Xk(N/2+1:N) Xk(1:N/2+1)]);

stem(k, magXk);


