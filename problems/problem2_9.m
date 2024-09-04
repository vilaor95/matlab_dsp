clear; clc; close all

nx = [0:20];
x  = 0.9.^(nx);

ny = [-20:0];
y  = 0.8.^(-ny);

subplot(4,1,1); stem(nx,x);
subplot(4,1,2); stem(ny,y);

[xr,nxr] = sigfold(x,nx);
[rxx,nrxx] = conv_m(x,nx,xr,nxr);

subplot(4,1,3); stem(nrxx,rxx);

[yr,nyr] = sigfold(y,ny);
[rxy,nrxy] = conv_m(x,nx,yr,nyr);

subplot(4,1,4); stem(nrxy,rxy);

