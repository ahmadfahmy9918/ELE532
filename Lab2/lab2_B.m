
clear;
t1=-10;
t2=10;
N=2000;
Delta_t=(t2-t1)/N;
t = (t1:Delta_t:t2);

x = zeros(size(t));
x(t>=-1 & t<=1)=1;

f = zeros(size(t));
f(t>=-1 & t<=0)=1;

for i=1:length(t)
    if (t(i) < -1 || t(i) > 0)
        h(i)=0;
    else
        h(i)=h(i-1)+.01;
    end
end

x1=x*Delta_t;

y=conv(x1,h);

figure('Name','Figure B.2','NumberTitle','off');

subplot(3,1,1);
plot(t,x); axis([t1 t2 -0.1 1.1])
title('x(t)');xlabel('t');

subplot (3,1,2);
plot(t,h);  axis([t1 t2 -0.1 1.1])
title('h(t)');xlabel('t');

subplot (3,1,3);
plot(t,y(1000:3000));  axis([t1 t2 -0.1 1.1])
title('y(t)');xlabel('t');

pause;


x_1 = zeros(size(t));
x_1(t>=4 & t<=6)=1;

x_2 = zeros(size(t));
x_2(t>=-5 & t<=-4)=1;


x_1b=x_1.*.1;
x_2b=x_2.*.1;


f=conv(x_1b,x_2b);

figure('Name','Figure B.3(a)','NumberTitle','off');

subplot(3,1,1);
plot(t,x_1); axis([t1 t2 -0.1 1.1])
title('x(t)');xlabel('t');

subplot (3,1,2);
plot(t,x_2); axis([t1 t2 -0.1 1.1])
title('h(t)');xlabel('t');

subplot (3,1,3);
plot(t,f(1000:3000));axis([t1 t2 -0.1 1.1])
title('h(t)');xlabel('t');

pause;

x_1 = zeros(size(t));
x_1(t>=3 & t<=5)=1;

x_2 = zeros(size(t));
x_2(t>=-5 & t<=-3)=1;


x_1b=x_1.*.1;
x_2b=x_2.*.1;


f=conv(x_1b,x_2b);

figure('Name','Figure B.3(b)','NumberTitle','off');

subplot(3,1,1);
plot(t,x_1); axis([t1 t2 -0.1 1.1])
title('x(t)');xlabel('t');

subplot (3,1,2);
plot(t,x_2); axis([t1 t2 -0.1 1.1])
title('h(t)');xlabel('t');

subplot (3,1,3);
plot(t,f(1000:3000));axis([t1 t2 -0.1 2.1])
title('h(t)');xlabel('t');

pause;

u = @(t) 1.0*(t>=0); 
f_1 = @(t) exp(t).*(u(t+2)-u(t)); %x1
f_2 = @(t) exp(-2*t).*(u(t)-u(t-1)); %x2

f_1a=f_1(t);
f_2a=f_2(t);

h1=conv(f_1a,f_2a);

figure('Name','Figure B.3(h)','NumberTitle','off');

subplot(3,1,1);
plot(t,f_1a); 
title('x_1(t)');xlabel('t');

subplot (3,1,2);
plot(t,f_2a); 
title('x_2(t)');xlabel('t');

subplot (3,1,3);
plot(t,h1(1000:3000));
title('h(t)');xlabel('t');




