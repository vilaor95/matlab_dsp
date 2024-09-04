n = [-20:100];
b = [1];
a = [1, -1, 0.9];

imp = impseq(0, -20, 100);
h = filter(b,a,imp)(:);

subplot(2,1,1); stem(n,h);
title('Impulse Response'); xlabel('n'); ylabel('h(n)');

x = stepseq(0, -20, 100);
s = filter(b,a,x);

subplot(2,1,2); stem(n,s); stem(n,s);
title('Step response'); xlabel('n'); ylabel('s(n)');
