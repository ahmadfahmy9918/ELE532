load('ELE532_Lab1_Data.mat', 'x_audio')
x_audio_copy = x_audio;

count=0;
threshold=0.01;
%Note that values removed using threshold are lower than the absolute value
for i = 1:20000
        if x_audio_copy(i,1) < threshold && x_audio_copy(i,1) > (-1*threshold) 
            x_audio_copy(i,1) = 0;
            count=count+1;
        end
end
disp(count);
sound(x_audio_copy);