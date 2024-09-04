n = -10:10;
x = exp((-0.1 + j*0.3)*n);

subplot(2, 2, 1);
stem(n, abs(x));

subplot(2, 2, 2);
stem(n, (180/pi)*angle(x));

subplot(2, 2, 3);
stem(n, real(x));

subplot(2, 2, 4);
stem(n , imag(x));
