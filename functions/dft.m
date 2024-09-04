function [Xk] = dft(xn, N)

  WN = exp(-j*2*pi/N);
  n = [0:1:N-1];
  k = [0:1:N-1];
  nk = n'*k;
  WNnk = WN .^ nk;
  Xk = xn * WNnk;
endfunction
