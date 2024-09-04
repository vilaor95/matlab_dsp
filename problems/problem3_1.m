clear; clc; close all

w = linspace(-pi,pi,1001);

%1
n1 = [-12:12];
x1 = (0.6.^abs(n1)).*(stepseq(-10,n1(1),n1(end)) - stepseq(11,n1(1),n1(end)));

X1 = dtft(x1,n1,w);

phaX1 = angle(X1);

subplot(5,3,1); stem(n1,x1);
subplot(5,3,2); plot(w/pi,X1);
subplot(5,3,3); plot(w/pi,phaX1*180/pi);

%2
n2 = [-1:22];
x2 = n2.*((0.9).^(n2)).*(stepseq(0,n2(1),n2(end)) - stepseq(21,n2(1),n2(end)));

X2 = dtft(x2,n2,w);

phaX2 = angle(X2);

subplot(5,3,4); stem(n2,x2);
subplot(5,3,5); plot(w/pi,X2);
subplot(5,3,6); plot(w/pi,phaX2*180/pi);

%3
n3 = [-1:52];
x3 = (cos(0.5*pi*n3) +j*sin(0.5*pi*n3)).*(stepseq(0,n3(1),n3(end))-stepseq(51,n3(1),n3(end)));

X3 = dtft(x3,n3,w);

magX3 = abs(X3); phaX3 = angle(X3);

subplot(5,3,7); stem(n3,x3);
subplot(5,3,8); plot(w/pi,phaX3);
subplot(5,3,9); plot(w/pi,magX3);

%4
n4 = [0:7];
x4 = [fliplr([1:4]),[1:4]];

X4 = dtft(x4,n4,w);

phaX4 = angle(X4);

subplot(5,4,10); stem(n4,x4);
subplot(5,4,11); plot(w/pi,X4);
subplot(5,4,12); plot(w/pi,phaX4);

