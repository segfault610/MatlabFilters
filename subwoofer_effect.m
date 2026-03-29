% Scenario: Splitting audio into Bass and Treble
load('handel.mat');
audiowrite('handel.wav', y, Fs);
[x, Fs] = audioread('handel.wav');
% Design a 4th order Butterworth Lowpass (Bass) and Highpass (Treble)
cutoff = 1000; % Frequency in Hz
[b_low, a_low] = butter(4, cutoff/(Fs/2), 'low');
[b_high, a_high] = butter(4, cutoff/(Fs/2), 'high');
bass = filter(b_low, a_low, x);
treble = filter(b_high, a_high, x);
% Play the bass for 3 seconds, then the treble
fprintf('Playing Bass (Low-pass)...\n');
sound(bass(1:3*Fs), Fs); 
pause(3.5);
fprintf('Playing Treble (High-pass)...\n');
sound(treble(1:3*Fs), Fs);
% plotting
t = (0:3*Fs-1)/Fs;
figure;
subplot(1,2,1);
plot(t, bass(1:3*Fs));
title('Bass (Low-pass)');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(1,2,2);
plot(t, treble(1:3*Fs));
title('Treble (High-pass)');
xlabel('Time (s)');
ylabel('Amplitude');
