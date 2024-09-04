clear; close all

%%1
n1 = [-5:15];
x1 = 3*impseq(-2,n1(1),n1(end)) + 2*impseq(0,n1(1),n1(end)) - impseq(3,n1(1),n1(end)) + 5*impseq(7,n1(1),n1(end));

subplot(4,2,1); stem(n1,x1);
title('1'); xlabel('n'); ylabel('x1(n)');

%%2b
n2b = [-10:10];
x2b = zeros(1,length(n2b));
for k = -5:5
  x2b = x2b + exp(-abs(k))*impseq(2*k,n2b(1),n2b(end));
end

subplot(4,2,2); stem(n2b,x2b);
title('2'); xlabel('n'); ylabel('x2(n)');

%%3
n3 = [-5:20];
x3 = 10*stepseq(0,n3(1),n3(end)) - 5*stepseq(5,n3(1),n3(end)) - 10*stepseq(10,n3(1),n3(end)) + 5*stepseq(15,n3(1),n3(end));

subplot(4,2,3); stem(n3,x3);
title('3'); xlabel('n'); ylabel('x3(n)');

%%4
n4 = [-25:15];
x4 = stepseq(-20,n4(1),n4(end)) - stepseq(10,n4(1),n4(end));
x4 = x4.*exp(0.1*n4);

subplot(4,2,4); stem(n4,x4);
title('4'); xlabel('n'); ylabel('x4(n)');

%%5
n5 = [-200:200];
x5 = 5*(cos(0.49*pi*n5) + cos(0.51*pi*n5));

subplot(4,2,5); stem(n5,x5);
title('5'); xlabel('n'); ylabel('x5(n)');

%%6
n6 = [-200:200];
x6 = 2*sin(0.01*pi*n6).*cos(0.5*pi*n6);

subplot(4,2,6); stem(n6,x6);

%%7
n7 = [0:100];
x7 = exp(-0.05*n7).*sin(0.1*pi*n7+pi/3);

subplot(4,2,7); stem(n7,x7);

%%8
n8 = [0:100];
x8 = exp(0.01*n8).*sin(0.1*pi*n8);

subplot(4,2,8); stem(n8,x8);
