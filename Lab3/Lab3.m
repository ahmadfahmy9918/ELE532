





n=-10:10;


t1_2 = 5;
t0_2 = 20;
w0_2 = 2*pi/t0_2;

D_nx2= @(n) 2*(t1_2/t0_2)*sinc(1/pi*(t1_2*n*w0_2));

t1_3 = 5;
t0_3 = 40;
w0_3 = (2*pi/t0_3);

D_nx3= @(n) 2*(t1_3/t0_3)*sinc(1/pi*(t1_3*n*w0_3));
   
disp('D_nx1 at n')    
% x1=D_nx1(n)

disp('D_nx2 at n')    
x2=D_nx2(n)

disp('D_nx3 at n')    
x3=D_nx3(n)


fs = 10;
t = 0:30;
x = cos(3*(pi/10)*t)+1/2*cos((pi/10)*t)

z=fft(x);

ly = length(z);
f = (-ly/2:ly/2-1)/ly*fs;
figure(1);
stem(f,abs(z))
xlabel 'Frequency (Hz)'
ylabel '|y|'
grid
tol = 1e-6;
z(abs(z) < tol) = 0;

theta = angle(z);
figure(2)
stem(f,theta/pi)
xlabel 'Frequency (Hz)'
ylabel 'Phase / \pi'
grid

figure(3);
stem(n,abs(D_nx2(n)));
figure(4);
stem(n,angle(D_nx2(n))/pi);

figure(5);
stem(n,abs(D_nx3(n)));
figure(6);
stem(n,angle(D_nx3(n)));




