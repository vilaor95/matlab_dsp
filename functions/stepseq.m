function [y, n] = stepseq(n0, n1, n2)
  n = [n1:n2]; y = [n - n0 >= 0];
end
