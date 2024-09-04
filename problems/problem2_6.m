%%1
n1 = [0:9];
x1 = [0:9];

[x1e,x1o,m1] = evenodd(x1,n1);

subplot(4,3,1); stem(n1,x1);
subplot(4,3,2); stem(m1,x1e);
subplot(4,3,3); stem(m1,x1o);

%%2
n2 = [-5:10];
x2 = exp(0.1*n2);

[x2e,x2o,m2] = evenodd(x2,n2);

subplot(4,3,4); stem(n2,x2);
subplot(4,3,5); stem(m2,x2e);
subplot(4,3,6); stem(m2,x2o);

%%3
n3 = [-20:20];
x3 = cos(0.2*pi*n3 + pi/4);

[x3e,x3o,m3] = evenodd(x3,n3);

subplot(4,3,7); stem(n3,x3);
subplot(4,3,8); stem(m3,x3e);
subplot(4,3,9); stem(m3,x3o);

%%4
n4 = [0:100];
x4 = sigmult(exp(-0.05*n4),n4,sin(0.1*pi*n4 + pi/3),n4);

[x4e,x4o,m4] = evenodd(x4,n4);

subplot(4,3,10); stem(n4,x4);
subplot(4,3,11); stem(m4,x4e);
subplot(4,3,12); stem(m4,x4o);
