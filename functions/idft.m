function [xn] = idft(Xk, N)

  WN = exp(-j*2*pi/N);
  n = [0:1:N-1];
  k = [0:1:N-1];
  nk = n'*k;
  WNnk = WN .^ (-nk);
  xn = (Xk * WNnk)/N;
endfunction
