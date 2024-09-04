clear; clc; close all

w = linspace(-pi,pi,101);

M10 = 10;
M25 = 25;
M50 = 50;
M101 = 101;

%Rectangular window

[r10,nr10] = stepseq(0,0,M10);
[r25,nr25] = stepseq(0,0,M25);
[r50,nr50] = stepseq(0,0,M50);
[r101,nr101] = stepseq(0,0,M101);

R10 = dtft(r10,nr10,w);
R25 = dtft(r25,nr25,w);
R50 = dtft(r50,nr50,w);
R101 = dtft(r101,nr101,w);

subplot(4,4,1); plot(w/pi,abs(R10));
subplot(4,4,5); plot(w/pi,abs(R25));
subplot(4,4,9); plot(w/pi,abs(R50));
subplot(4,4,13); plot(w/pi,abs(R101));

%Hanning window
h10 = 0.5*(1-cos(2*pi*nr10/(M10-1))).*r10;
h25 = 0.5*(1-cos(2*pi*nr25/(M25-1))).*r25;
h50 = 0.5*(1-cos(2*pi*nr50/(M50-1))).*r50;
h101 = 0.5*(1-cos(2*pi*nr101/(M101-1))).*r101;

H10 = dtft(h10,nr10,w);
H25 = dtft(h25,nr25,w);
H50 = dtft(h50,nr50,w);
H101 = dtft(h101,nr101,w);

subplot(4,4,2); plot(w/pi,abs(H10));
subplot(4,4,6); plot(w/pi,abs(H25));
subplot(4,4,10); plot(w/pi,abs(H50));
subplot(4,4,14); plot(w/pi,abs(H101));

%Triangular window
t10 = (1-abs(M10-1-2*nr10)/(M10-1)).*r10;
t25 = (1-abs(M25-1-2*nr25)/(M25-1)).*r25;
t50 = (1-abs(M50-1-2*nr50)/(M50-1)).*510;
t101 = (1-abs(M101-1-2*nr101)/(M101-1)).*r101;

T10 = dtft(t10,nr10,w);
T25 = dtft(t25,nr25,w);
T50 = dtft(t50,nr50,w);
T101 = dtft(t101,nr101,w);

subplot(4,4,3); plot(w/pi,abs(T10));
subplot(4,4,7); plot(w/pi,abs(T25));
subplot(4,4,11); plot(w/pi,abs(T50));
subplot(4,4,15); plot(w/pi,abs(T101));

%Hamming window
hm10 = (0.54 - 0.46*cos(2*pi*nr10/(M10-1))).*r10;
hm25 = (0.54 - 0.46*cos(2*pi*nr25/(M25-1))).*r25;
hm50 = (0.54 - 0.46*cos(2*pi*nr50/(M50-1))).*r50;
hm101 = (0.54 - 0.46*cos(2*pi*nr101/(M101-1))).*r101;

HM10 = dtft(hm10,nr10,w);
HM25 = dtft(hm25,nr25,w);
HM50 = dtft(hm50,nr50,w);
HM101 = dtft(hm101,nr101,w);

subplot(4,4,4); plot(w/pi,abs(HM10));
subplot(4,4,8); plot(w/pi,abs(HM25));
subplot(4,4,12); plot(w/pi,abs(HM50));
subplot(4,4,16); plot(w/pi,abs(HM101));
