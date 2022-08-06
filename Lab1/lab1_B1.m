% problem B1
% figure 1.50
p = @(t) 1.0.*((t>=0)&(t<1));
t = (-1:0.01:2); 

plot(t,p(t));
xlabel('t'); 
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]);

