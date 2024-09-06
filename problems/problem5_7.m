clear;clc;close all

N = 6;
x = [2 4 6 1 3 5]; nx = [0:N-1];

y = [x(1) fliplr(x(2:end))];

subplot(3,2,1); stem(nx,x);
subplot(3,2,2); stem(nx,y);

X = dft(x,N);
Y = dft(y,N);

W = [X(1) fliplr(X(2:end))];
w = dft(W,N);

subplot(3,2,3); stem(sigfold(X,nx));
subplot(3,2,4); stem(Y);
subplot(3,2,5); stem(w);
subplot(3,2,6); stem(W);

error = Y - W
