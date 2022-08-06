function [x_1_dn] = coefficents_x_1(n)
%Genrates n fourier series coeffiecents for x_1 function
% 
syms t
x_1 = cos(3*pi/10*t)+.5*cos(pi/10*t);
t0_1 = 20;
w0_1 = 2*pi/t0_1;

n_low=-1*n;
n_high=n;
n_length=n_high-n_low;
i=1;
xv_1=zeros(n_length,1);
for n=n_low:n_high
    
    xv_1(i,1)= n;
    xv_1(i,2) = 1/t0_1*int(x_1*exp(-1i*w0_1*t*n),0,t0_1);
    
    i=i+1;
    Progress_percent =(i-2)/n_length*100;
    
    disp(['x_1: ',num2str(Progress_percent),'%']);
end
x_1_dn=xv_1;
end

