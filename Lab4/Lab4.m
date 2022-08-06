


% SIGNAL GENERATION x(t) 
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
xt = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = [-(N/2):1:(N/2)-1]*(1/N);

%PLOT x(t)
figure('name','A.0: x(t)');
stairs(t,xt); 

title('A.0: x(t)');
xlabel('t');
ylabel('x(t)');
grid on; 
axis([-10,110,-0.1,1.1]);

%A.1

zt=conv(xt,xt);

%PLOT z(t)
figure('name','A.1: z(t) from convolution');
zt1=zt(1,1:N);
plot(t,zt1); 

title('A.1: z(t)');
xlabel('t');
ylabel('z(t)');
grid on; 
axis([-10,110,-0.1,10.1]);


%A.2

%CALCULATE x(w)
xf = fft(xt);
%CALCULATE z(w)
zf=xf.*xf;

%A.3

%PLOT MAGNITUDE AND PHASE OF z(w)
figure('name','A.2: z(w) = x(w)*x(w)');

subplot(211); plot(f,fftshift( abs(zf))); 
grid on;
title('A.2: |z(w)|')
xlabel('w')
ylabel('|z(w)|')

subplot(212); plot(f,fftshift(angle(zf))); 
grid on;
title('A.2: ∠z(w)');
xlabel('w');
ylabel('∠z(w)');



%A.4

zhat = ifft(zf);


figure('name','A.3: z(t) from z(w)');
plot(t,zhat); 

title('A.3: z(t) from z(w)');
xlabel('t');
ylabel('z(t)');
grid on; 
axis([-10,110,-0.1,10.1]);
















