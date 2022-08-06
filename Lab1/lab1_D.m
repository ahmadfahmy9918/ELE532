% Problem D
load('C:\Users\natha\Google Drive\2020_2021\ELE532\Lab1\ELE532_Lab1_Data.mat', 'A')
load('C:\Users\natha\Google Drive\2020_2021\ELE532\Lab1\ELE532_Lab1_Data.mat', 'B')
% Problem D1



%D1 A
A_D1_a=(A(:));
%D1 B
A_D1_b=A([2 4 7]);
%D1 C
A_D1_c=[A>=0.2];
%D1 D
A_D1_d=A([ A >= 0.2 ]);
%D1 E
A([ A >= 0.2 ]) = 0;
A_D1_e=A;



% Problem D2 


%D2 a
tic;
for i = 1:1024
    for j = 1:100
        if B(i,j) < 0.01 
            B(i,j) = 0;
        end
    end
end

B_D2_a=B;%save output in variable
toc;
disp('Time using Nested For Loop');

%D2 b
tic;
B([ B >= 0.01 ]) = 0;
B_D2_b=B; %save output in variable
toc;
disp('Time using matlab function');



