clc; clear; close all;

n = [-3:3];
x = [2,4,-3,1,-5,4,7];

%%1
[x11,n11] = sigshift(x,n,3);
[x12,n12] = sigshift(x,n,-4);

[x1,n1] = sigadd(2*x11,n11,3*x12,n12);
[x1,n1] = sigadd(x1,n1,-x,n);

subplot(4,1,1); stem(n1,x1);

%%2
[x21,n21] = sigshift(x,n,-4);
[x22,n22] = sigshift(x,n,-5);

[x2,n2] = sigadd(4*x21,n21,5*x22,n22);
[x2,n2] = sigadd(x2,n2,2*x,n);

subplot(4,1,2); stem(n2,x2);

%%3
[x31,n31] = sigshift(x,n,-3);
[x32,n32] = sigshift(x,n,2);
[x33,n33] = sigmult(x31,n31,x32,n32);
[x34,n34] = sigshift(x,n,1); [x34,n34] = sigfold(x34,n34);
[x35,n35] = sigshift(x,n,-1);
[x36,n36] = sigmult(x34,n34,x35,n35);

[x3,n3] = sigadd(x33,n33,x36,n36);

subplot(4,1,3); stem(n3,x3);

%%4
n4 = [-10:10];
x4s = sigadd(x,n,zeros(1,length(n4)),n4);

[x41,n41] = sigmult(2*exp(0.5*n4),n4,x4s,n4);
[x42,n42] = sigshift(x4s,n4,-2); [x42,n42] = sigmult(cos(0.1*pi*n4),n4,x42,n42);

[x4,n4] = sigadd(x41,n41,x42,n42);

subplot(4,1,4); stem(n4,x4);
