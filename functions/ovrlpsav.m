function [y] = ovrlpsav(x,h,N)
% Overlap-Save method of block convolution
% ----------------------------------------
% [y] = ovrlpsav(x,h,N)
% y = output sequence
% x = input sequence
% h = impulse response
% N = block length

  Nx = length(x);
  M = length(h);
  L = N - M + 1;

  K = floor((Nx+M-2)/L) + 1;

  h = [h zeros(1,N-M)];
  x = [zeros(1,M-1) x zeros(1,N-1)];

  for i = 0:1:K-1
    xk = x(i*L+1:i*L+N);
    Y(i+1,:) = circonvt(xk,h,N);
  end

  Y = Y(:,M:N)';
  y = (Y(:))';
endfunction
