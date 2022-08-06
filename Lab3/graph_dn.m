function [] = graph_dn(dn,fx)
%Graphs fourier Series coefficients
%
figure('name',['X_',num2str(fx),'D_n Graph']);
x=dn(:,1);
y=dn(:,2);

subplot(2,1,1);
stem(x,abs(y));
title(['X_',num2str(fx),' |D_n|'])
xlabel('n')
ylabel('|D_n|')

subplot(2,1,2);
stem(x,angle(y));
title(['X_',num2str(fx),' ∠D_n'])
xlabel('n')
ylabel('∠D_n')
end

