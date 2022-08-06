% Problem A.1a
% Figure 1.46
f = @(t) exp(-t).*cos(2*pi*t);
t=(-2:2);
figure('Name','Figure A1a','NumberTitle','off');
plot(t,f(t));
xlabel('t');ylabel('f(t)');grid;

% Problem A.1b
% Figure 1.47
f = @(t) exp(-t).*cos(2*pi*t);
t=(-2:0.1:2);
figure('Name','Figure A1b','NumberTitle','off');
plot(t,f(t));
xlabel('t');ylabel('f(t)');grid;

% Problem A.2
f = @(t) exp(-t);
tt=[-2:2];
figure('Name','Figure A2','NumberTitle','off');
plot(tt,f(tt));
xlabel('t');ylabel('f(t)');grid;
%% 