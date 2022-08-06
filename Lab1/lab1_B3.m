% problem B Time Shift and Scaling

t = (-1:0.01:2); 
p = @(t) 1.0.*((t>=0)&(t<1));

figure('Name','Figure B1','NumberTitle','off');
plot(t,p(t));
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]);

r = @(t) t.*p(t);

figure('Name','Figure B2a','NumberTitle','off');
plot(t,r(t));
xlabel('t'); 
ylabel('r(t)');
axis([-1 2 -.1 1.1]);

n = @(t) r(t)+r(-t+2);

figure('Name','Figure B2b','NumberTitle','off');
plot(t,n(t));
xlabel('t'); 
ylabel('n(t)');
axis([-1 2 -.1 1.1]);

t = (-4:0.01:4); 
n1 = @(t) n(.5*t);


figure('Name','Figure B3a','NumberTitle','off');
plot(t,n1(t));
xlabel('t'); 
ylabel('n1(t)');
axis([-1 4 -.1 1.1]);

n2 = @(t) n1(t+.5);

figure('Name','Figure B3b','NumberTitle','off');
plot(t,n2(t));
xlabel('t'); 
ylabel('n2(t)');
axis([-1 4 -.1 1.1]);

n3 = @(t) n(t+.25);

figure('Name','Figure B4a','NumberTitle','off');
plot(t,n3(t));
xlabel('t'); 
ylabel('n3(t)');
axis([-1 4 -.1 1.1]);

n4 = @(t) n3(t*.5);

figure('Name','Figure B4b','NumberTitle','off');
plot(t,n4(t));
xlabel('t'); 
ylabel('n4(t)');
axis([-1 4 -.1 1.1]);

