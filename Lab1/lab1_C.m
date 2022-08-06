
% Problem C: Visualizing operations on the independent variable and algorithm vectorization

% Problem C.1
f = @(t) exp(-2*t).*cos(4*pi*t);
u = @(t) +(t>=0);
g = @(t) f(t).*u(t); 

% Problem C.2
s = @(t) g(t+1);
figure('Name','Figure C2','NumberTitle','off');
t = (0:0.01:4);
plot(t,s(t));
xlabel('t'); 
ylabel('s(t)'); 
grid;

% Problem C.3
sa = @(t) exp(-2*t).*exp(-1*a*t).*cos(4*pi*t).*u(t);

%for loop structure
for a = 1:2:7
    figure('Name',strcat('Figure C3 a= ',num2str(a)),'NumberTitle','off');
    sa = @(t) exp(-2*t).*exp(-1*a*t).*cos(4*pi*t).*u(t);
    plot(t,sa(t)); 
    xlabel('t'); 
    ylabel(strcat('Sa(t) a= ',num2str(a))); 
    grid;
end

%matrix strucutre
a = (1:2:7);
t = (0:0.01:2)'; 
T = t*ones(1,4);
sa2 = exp(-2*T*diag(a)).*cos(4*pi*T).*u(T).*exp(-1*T*diag(a));
figure('Name','Figure C3 Matrix','NumberTitle','off');
plot(t,sa2);
xlabel('t'); 
ylabel('Sa(t) a=(1,3,5,7)'); 
grid;
disp('Matrix Size, rows, columns, repectively');
disp(size(sa2));


