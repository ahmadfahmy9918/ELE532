
t1=-20;
t2=20;
N=2000;
Delta_t=(t2-t1)/N;
t = (t1:Delta_t:t2);


x_1 = zeros(size(t));
x_1(t>=0 & t<=10)=1;

x_2 = zeros(size(t));
x_2(t>=0 & t<=10)=1;


x_1b=x_1*.1;
x_2b=x_2*.2;


f=conv(x_1b,x_2b);

figure('Name','Figure A.1 (Check)','NumberTitle','off');

plot(t,f);axis([t1 t2 -0.1 10.1])
title('h(t)');xlabel('t');