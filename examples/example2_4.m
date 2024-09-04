n = 0:20;
x = stepseq(0, min(n), max(n)) - stepseq(10, min(n), max(n));
subplot(3, 1, 1); stem(n, x);

[xe, xo, m] = evenodd(x, n);
subplot(3, 1, 2); stem(m, xe);
subplot(3, 1, 3); stem(m, xo);
