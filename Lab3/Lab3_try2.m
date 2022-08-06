syms t
%X1 VALUES OF N and GRAPH
x_1 = cos(3*pi/10*t)+.5*cos(pi/10*t);
t0_1 = 20;
w0_1 = 2*pi/t0_1;

n_low=-100;
n_high=100;
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

figure('name','X_1 D_n Graph');
x=xv_1(:,1);
y=xv_1(:,2);

subplot(2,1,1);
stem(x,abs(y));
title('X_1 |D_n|')
xlabel('n')
ylabel('|D_n|')

subplot(2,1,2);
stem(x,angle(y));
title('X_1 ∠D_n')
xlabel('n')
ylabel('∠D_n')


%X2 VALUES OF N and GRAPH
u = @(t) +(t>=0);
x_2 = heaviside(t+5)-heaviside(t-5);
t0_2 = 20;
w0_2 = 2*pi/t0_1;


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

figure('name','X_2 D_n Graph');
x=xv_2(:,1);
y=xv_2(:,2);

subplot(2,1,1);
stem(x,abs(y));
title('X_3 |D_n|')
xlabel('n')
ylabel('|D_n|')

subplot(2,1,2);
stem(x,angle(y));
title('X_3 ∠D_n')
xlabel('n')
ylabel('∠D_n')

%X3 VALUES OF N and GRAPH
u = @(t) +(t>=0);
x_3 = heaviside(t+5)-heaviside(t-5);
t0_3 = 40;
w0_3 = 2*pi/t0_3;


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

figure('name','X_3 D_n Graph');
x=xv_3(:,1);
y=xv_3(:,2);

subplot(2,1,1);
stem(x,abs(y));
title('X_2 |D_n|')
xlabel('n')
ylabel('|D_n|')

subplot(2,1,2);
stem(x,angle(y));
title('X_2 ∠D_n')
xlabel('n')
ylabel('∠D_n')
