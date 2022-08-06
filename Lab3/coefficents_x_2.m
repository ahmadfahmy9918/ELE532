function [x_2_dn] = coefficents_x_2(n)
%Genrates n fourier series coeffiecents for x_3 function
% 
syms t
x_2 = heaviside(t+5)-heaviside(t-5);
t0_2 = 20;
w0_2 = 2*pi/t0_2;

n_low=-1*n;
n_high=n;
n_length=n_high-n_low;
i=1;
xv_2=zeros(n_length,1);
for n=n_low:n_high
    
    xv_2(i,1)= n;
    xv_2(i,2) = 1/t0_2*int(x_2*exp(-1i*w0_2*t*n),-1*t0_2,t0_2);
    
    i=i+1;
    Progress_percent=(i-2)/n_length*100;
    disp(['x_2: ',num2str(Progress_percent),'%']);
end
x_2_dn=xv_2;
end
