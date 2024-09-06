function [x2] = circfold(x1,N)
% Circular folding using DFT
% x2 = circfold(x1,N)
% x2 = circularly folded output sequence
% x1 = input sequence of length <= N
% N = circular buffer length
  X = dft(x1,N);
  x2 = real(dft(X,N))/N;
endfunction

