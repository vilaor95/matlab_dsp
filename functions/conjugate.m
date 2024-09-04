function [xe, xo, m] = conjugate(x, n)

  m = -fliplr(n);
  m1 = min([m,n]); m2 = max([m, n]); m = m1:m2;
  nm = n(1) - m(1); n1 = 1:length(n);
  x1 = zeros(1, length(m)); x1(n1+nm) = x;

  xe = 0.5*sigadd(x,n,conj(fliplr(x1)),m);
  xo = 0.5*sigadd(x,n,-conj(fliplr(x1)),m);
end
