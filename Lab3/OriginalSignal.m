function [] = OriginalSignal(dn_input,w0,fx)
% ** OriginalSignal **
%Takes fourier series coeficents in matrix allong with w0 and constructs
%original signal. 
t_start=-300;
t_end=300;
interval=.25;
t_length= (t_end-t_start)/interval;
n_start=dn_input(1,1);
n_length=size(dn_input,1);
n_end=n_start+n_length-1;
x_t=zeros(t_length,2);
u=1;
    for t = t_start:interval:t_end
        i=1;
        x=0;
        for n = n_start:n_end
            dn_temp=dn_input(i,2);
            n_temp = dn_input(i,1);
            x = x + dn_temp*exp(-1i*w0*n_temp*t);
            i=i+1;
        end
        %disp(x);
        x_t(u,1)=t;
        x_t(u,2)=x;
        u=u+1;
        
        Progress_percent =(u-2)/t_length*100;
        disp(['x_t: ',num2str(Progress_percent),'%']);
    end
%disp(x_t);
disp('done');
xdata=x_t(:,1);
ydata=x_t(:,2);
figure('name',['X_',num2str(fx),' Graph']);
plot(xdata,ydata);
title(['X',num2str(fx)])
xlabel('n')
ylabel(['x_',num2str(fx)])
end


