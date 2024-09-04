clear;clc;close all

N = 2048; fft_time = zeros(1,N);

for n = 1:1:N
  x = rand(1,n);
  t = clock; fft(x); fft_time(n) = etime(clock,t);
end

n = [1:1:N]; plot(n,fft_time,'.');
