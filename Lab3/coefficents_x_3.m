function [x_3_dn] = coefficents_x_3(n)
%Genrates n fourier series coeffiecents for x_3 function
% 
syms t
x_3 = heaviside(t+5)-heaviside(t-5);
t0_3 = 40;
w0_3 = 2*pi/t0_3;

n_low=-1*n;
n_high=n;
n_length=n_high-n_low;
i=1;
xv_3=zeros(n_length,1);
for n=n_low:n_high
    
    xv_3(i,1)= n;
    xv_3(i,2) = 1/t0_3*int(x_3*exp(-1i*w0_3*t*n),-1*t0_3,t0_3);
    
    i=i+1;
    Progress_percent=(i-2)/n_length*100;
    disp(['x_3: ',num2str(Progress_percent),'%']);
end
x_3_dn=xv_3;
end
