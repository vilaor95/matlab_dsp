clear;clc;close all

n = [0:100];
x1 = rand(1,length(n));
x2 = sqrt(10)*randn(1,length(n));

u = stepseq(n(1),n(1),n(end));

y = (x1+x2).*u;
y1 = x1.*u;
y2 = x2.*u;

diff = sum(abs(y - (y1+y2)));

if (diff < 1e-5)
  disp(' *** System-1 is linear ***');
else
  disp(' *** System-1 is not linear ***');
end

[y1,n1] = sigshift(x1,n,-1);
[y1,n1] = sigadd(x1,n,n.*y1,n1);

[y2,n2] = sigshift(x2,n,-1);
[y2,n2] = sigadd(x2,n,n.*y2,n2);



