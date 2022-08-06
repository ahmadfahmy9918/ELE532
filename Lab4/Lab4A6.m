
%A.5 Pulse width = 5

% SIGNAL GENERATION x(t) 
N = 100; PulseWidth = 5;
t = [0:1:(N-1)];
xt = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = [-(N/2):1:(N/2)-1]*(1/N);


zt=conv(xt,xt);

%CALCULATE x(w)
xf = fft(xt);
%CALCULATE z(w)
zf=xf.*xf;



%PLOT MAGNITUDE AND PHASE OF z(w)
figure('name','A.5: z(w) = x(w)*x(w) Pulse width = 5');

subplot(211); stem(f,fftshift( abs(zf))); 
grid on;
title('A.5: |z(w)| Pulse width = 5')
xlabel('w')
ylabel('|z(w)|')

subplot(212); stem(f,fftshift(angle(zf))); 
grid on;
title('A.5: ∠z(w) Pulse width = 5');
xlabel('w');
ylabel('∠z(w)');

%A.5 Pulse width = 25

% SIGNAL GENERATION x(t) 
N = 100; PulseWidth = 25;
t = [0:1:(N-1)];
xt = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = [-(N/2):1:(N/2)-1]*(1/N);


zt=conv(xt,xt);

%CALCULATE x(w)
xf = fft(xt);
%CALCULATE z(w)
zf=xf.*xf;



%PLOT MAGNITUDE AND PHASE OF z(w)
figure('name','A.5: z(w) = x(w)*x(w) Pulse width = 25');

subplot(211); stem(f,fftshift( abs(zf))); 
grid on;
title('A.5: |z(w)| Pulse width = 25')
xlabel('w')
ylabel('|z(w)|')

subplot(212); stem(f,fftshift(angle(zf))); 
grid on;
title('A.5: ∠z(w) Pulse width = 25');
xlabel('w');
ylabel('∠z(w)');

















