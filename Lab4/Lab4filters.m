%Frequency Shift hLPF2500
w0=.8;
hLPF2500_right=zeros(1,214);
for t=1:214
    hLPF2500_right(1,t)=hLPF2500(1,t)*exp(1i*w0*t);
end
figure('name','MagSpect hLPF2500_right');
MagSpect(hLPF2500_right);

%Frequency Shift hLPF2500
w0=-.8;
hLPF2500_left=zeros(214,1);
for t=1:214
    hLPF2500_left(t,1)=hLPF2500(1,t)*exp(1i*w0*t);
end
 figure('name','MagSpect hLPF2500_left');
 MagSpect(hLPF2500_left);

%Frequency Shift hLPF2000
w0=.8;
hLPF2000_right=zeros(1,711);
for t=1:711
    hLPF2000_right(1,t)=hLPF2000(1,t)*exp(1i*w0*t);
end
figure('name','MagSpect hLPF2000_right');
MagSpect(hLPF2000_right);

%Frequency Shift hLPF2000
w0=-.8;
hLPF2000_left=zeros(711,1);
for t=1:711
    hLPF2000_left(t,1)=hLPF2000(1,t)*exp(1i*w0*t);
end
 figure('name','MagSpect hLPF2000_left');
 MagSpect(hLPF2000_left);
 
 