clear; clc; close all

alpha = 0.1;
k = 50;

nx = [-100:100];
x = cos(0.2*pi*nx) + 0.5*cos(0.6*pi*nx);

[ys,nys] = sigshift(x,nx,k);
[y,ny]  = sigadd(x,nx,alpha*ys,nys);

subplot(4,1,1); stem(nx,x);
subplot(4,1,2); stem(ny,y);

[yf,nyf] = sigfold(y,ny);
[xf,nxf] = sigfold(x,nx);

[ryx,nryx] = conv_m(y,ny,xf,nxf);

subplot(4,1,3); stem(nryx,ryx);

[ryy,nryy] = conv_m(y,ny,yf,nyf);

subplot(4,1,4); stem(nryy, ryy);
