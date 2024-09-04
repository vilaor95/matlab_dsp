%%
n1 = [-5: 5];
x1 = 2*impseq(-2, min(n1), max(n1)) - impseq(4, min(n1), max(n1));
stem(n1, x1);

%%
n2 = [0:20];
x2 = (n2.*(stepseq(0, min(n2), max(n2)) - stepseq(10, min(n2), max(n2)))) + (10*exp(-0.3*(n2-10)).*(stepseq(10, min(n2), max(n2)) - stepseq(20, min(n2), max(n2))));
stem(n2, x2);

%%
n3 = [0:50];
x3 = cos(0.04*pi*n3) + 0.2*randn(1, max(n3)+1);
stem(n3, x3);

%%
n4 = [-10:9];
x4s = [5:-1:1];
x4 = (x4s' * ones(1,4))(:)';
stem(n4, x4);
