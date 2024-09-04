clc; clear; close all

%%1
x1s = [-2:2];
x1 = ones(5,length(x1s));
x1 = (x1s.*x1)'(:);

subplot(2,2,1); stem(x1);

%%2
n2 = [0:19];
x2s = exp(0.1*n2).*(stepseq(0,n2(1),n2(end)) - stepseq(20,n2(1),n2(end)));
x2 = (x2s'*ones(1,3))(:);

subplot(2,2,2); stem(x2);

%%3
n3 = [0:9];
x3s = sin(0.1*pi*n3).*(stepseq(0,n3(1),n3(end))-stepseq(10,n3(1),n3(end)));
x3 = (x3s'*ones(1,4))(:);

subplot(2,2,3); stem(x3);

%%4
n4 = [0:24];
x4 = zeros(1,length(n4));
x4s1 = [1:3];
x4s2 = [1:4];
x4 = (x4s1'*ones(1,9))(:)(1:25) + (x4s2'*ones(1,7))(:)(1:25);

subplot(2,2,4); stem(n4,x4)
