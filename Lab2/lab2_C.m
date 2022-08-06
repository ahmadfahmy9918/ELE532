
u = @(t) 1.0*(t>=0); 
h_1 = @(t)  exp(t/5).*u(t);
h_2 = @(t)  4*exp(-t/5).*u(t);
h_3 = @(t)  4*exp(-t).*u(t);
h_4 = @(t)  4*(exp(-t/5)-exp(-t)).*u(t);

t=[-1:0.001:5];

figure('Name','Figure C1 h_1','NumberTitle','off');
plot(t,h_1(t));
title('C.1 h_1(t)');
ylabel('h_1');
xlabel('t');
pause;
figure('Name','Figure C1 h_2','NumberTitle','off');
plot(t,h_2(t));
title('C.1 h_2(t)');
ylabel('h_2');
xlabel('t');
pause;
figure('Name','Figure C1 h_3','NumberTitle','off');
plot(t,h_3(t));
title('C.1 h_3(t)');
ylabel('h_3');
xlabel('t');
pause;
figure('Name','Figure C1 h_4','NumberTitle','off');
plot(t,h_4(t));
title('C.1 h_4(t)');
ylabel('h_4');
xlabel('t');
pause;

h2_1=@(t) h_1(t).*(u(t)-u(t-20));
h2_2=@(t) h_2(t).*(u(t)-u(t-20));
h2_3=@(t) h_3(t).*(u(t)-u(t-20));
h2_4=@(t) h_4(t).*(u(t)-u(t-20));

figure('Name','Figure C3 h_1','NumberTitle','off'); 
% Create figure window and make visible on screen 
u = @(t) 1.0*(t>=0); 
x = @(t) sin(5*t).*(u(t)-u(t-3)); 
h = @(t) h2_1(t);
dtau = 0.005; 
tau = 0:dtau:20; 
ti = 0; 
tvec = 0:.1:20; 
y = NaN*zeros(1,length(tvec)); 
% Pre-allocate memory 
for t = tvec 
    ti = ti+1; % Time index 
    xh = x(t-tau).*h(tau); 
    lxh = length(xh); 
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral 
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok'); 
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],... 
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],... 
        [.8 .8 .8],'edgecolor','none'); 
    xlabel('\tau'); 
    title('C3(a) h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]'); 
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]); 
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok'); 
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau'); 
    axis([tau(1) tau(end) -1.0 5.0]); grid; 
    drawnow;
    %pause;
end
pause;

figure('Name','Figure C3 h_2','NumberTitle','off'); 
% Create figure window and make visible on screen 
u = @(t) 1.0*(t>=0); 
x = @(t) sin(5*t).*(u(t)-u(t-3)); 
h = @(t) h2_2(t);
dtau = 0.005; 
tau = 0:dtau:20; 
ti = 0; 
tvec = 0:.1:20; 
y = NaN*zeros(1,length(tvec)); 
% Pre-allocate memory 
for t = tvec 
    ti = ti+1; % Time index 
    xh = x(t-tau).*h(tau); 
    lxh = length(xh); 
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral 
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok'); 
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],... 
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],... 
        [.8 .8 .8],'edgecolor','none'); 
    xlabel('\tau'); 
    title('C3(b) h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]'); 
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]); 
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok'); 
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau'); 
    axis([tau(1) tau(end) -1.0 5.0]); grid; 
    drawnow;
    %pause;
end
pause;
figure('Name','Figure C3 h_3','NumberTitle','off'); 
% Create figure window and make visible on screen 
u = @(t) 1.0*(t>=0); 
x = @(t) sin(5*t).*(u(t)-u(t-3)); 
h = @(t) h2_3(t);
dtau = 0.005; 
tau = 0:dtau:20; 
ti = 0; 
tvec = 0:.1:20; 
y = NaN*zeros(1,length(tvec)); 
% Pre-allocate memory 
for t = tvec 
    ti = ti+1; % Time index 
    xh = x(t-tau).*h(tau); 
    lxh = length(xh); 
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral 
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok'); 
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],... 
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],... 
        [.8 .8 .8],'edgecolor','none'); 
    xlabel('\tau'); 
    title('C3(c) h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]'); 
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]); 
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok'); 
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau'); 
    axis([tau(1) tau(end) -1.0 5.0]); grid; 
    drawnow;
    %pause;
end
pause;
figure('Name','Figure C3 h_4','NumberTitle','off');
% Create figure window and make visible on screen 
u = @(t) 1.0*(t>=0); 
x = @(t) sin(5*t).*(u(t)-u(t-3)); 
h = @(t) h2_4(t);
dtau = 0.005; 
tau = 0:dtau:20; 
ti = 0; 
tvec = 0:.1:20; 
y = NaN*zeros(1,length(tvec)); 
% Pre-allocate memory 
for t = tvec 
    ti = ti+1; % Time index 
    xh = x(t-tau).*h(tau); 
    lxh = length(xh); 
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral 
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok'); 
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],... 
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],... 
        [.8 .8 .8],'edgecolor','none'); 
    xlabel('\tau'); 
    title('C3(a) h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]'); 
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]); 
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok'); 
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau'); 
    axis([tau(1) tau(end) -1.0 5.0]); grid; 
    drawnow;
    %pause;
end
%pause;