% Problem A.1 

% CH2MP1.m : Chapter 2, MATLAB Program 1 
% Script M-file determines characteristic roots of op-amp circuit.
% Set component values: 
R = [1e4, 1e4, 1e4]; 
C = [1e-6, 1e-6]; 
% Determine coefficients for characteristic equation: 
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))]; 
% Determine characteristic roots: 
lambda = roots(A)
eq1 = poly(lambda)



%Problem A.2

t = (0:0.0005:0.1);
figure('Name','Figure A2','NumberTitle','off');
x = polyval(eq1,t);
plot(t,polyval(eq1,t));
title('Figure A.2');
xlabel('t');
ylabel('f(t)');
grid;

%Problem A3

% see CH2MP2.m


