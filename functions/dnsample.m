function [y,m] = dnsample(x,n,M)
  m = n(mod(n,M) == 0);
  y = x([mod(n,M) == 0]);
end

