load('handel.mat');
audiowrite('handel.wav', y, Fs);
[x, Fs] = audioread('handel.wav');
%sound(x, Fs);
%pause(10);
y_filtered = lowpass(x, 3000, Fs);
t = (0:length(x)-1)/Fs;   % Time axis
figure;
subplot(2,1,1);
plot(t, x);
title('Original Audio Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,1,2);
plot(t, y_filtered);
title('Filtered Audio Signal (Lowpass 3 kHz)');
xlabel('Time (s)');
ylabel('Amplitude');
sound(y_filtered,Fs);