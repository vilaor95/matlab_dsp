clear; close all

%%1
n1 = [1:100000];
x1 = 2*rand(1,n1(end));

subplot(4,2,1); hist(x1,100);

%%2
n2 = [1:10000];
x2 = 10 + sqrt(10)*randn(1,length(n2));

subplot(4,2,2); hist(x2, 100);

%%3
[x3,n3] = sigshift(x1,n1,1);
[x3,n3] = sigadd(x1,n1,x3,n3);

subplot(4,2,3); hist(x3,100);

%%4
n4 = [-0.5:1/100000:0.5-1/100000];
x4 = zeros(1,length(n4));
for k = 1:4
  x4 = x4 + rand(1,length(x4)) - 0.5;
end

subplot(4,2,4); hist(x4,100);
