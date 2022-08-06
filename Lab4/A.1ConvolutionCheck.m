x_1 = zeros(size(t));
x_1(t>=0 & t<=10)=1;

x_2 = zeros(size(t));
x_2(t>=0 & t<=10)=1;


x_1b=x_1.*.1;
x_2b=x_2.*.1;


f=conv(x_1b,x_2b);

figure('Name','Figure A.1 (Check)','NumberTitle','off');

subplot(3,1,1);
plot(t,x_1); axis([t1 t2 -0.1 1.1])
title('x(t)');xlabel('t');

subplot (3,1,2);
plot(t,x_2); axis([t1 t2 -0.1 1.1])
title('h(t)');xlabel('t');

subplot (3,1,3);
plot(t,f(1000:3000));axis([t1 t2 -0.1 1.1])
title('h(t)');xlabel('t');