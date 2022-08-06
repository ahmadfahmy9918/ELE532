% problem B2

t = (-1:0.01:2); 

p = @(t) 1.0.*((t>=0)&(t<1));

r = @(t) t.*p(t);

n = @(t) r(t)+r(-t+2);

plot(t,n(t));

xlabel('t'); 
ylabel('n(t)');
axis([-1 2 -.1 1.1]);

n1 = @(t) n(.5*t);
n2 = @(t) n1(t+.5);