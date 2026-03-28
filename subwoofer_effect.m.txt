% Scenario: Splitting audio into Bass and Treble
[x, Fs] = audioread('handel.wav'); 

% Design a 4th order Butterworth Lowpass (Bass) and Highpass (Treble)
cutoff = 800; % Frequency in Hz
[b_low, a_low] = butter(4, cutoff/(Fs/2), 'low');
[b_high, a_high] = butter(4, cutoff/(Fs/2), 'high');

bass = filter(b_low, a_low, x);
treble = filter(b_high, a_high, x);

% Demo: Play the bass for 3 seconds, then the treble
fprintf('Playing Bass (Low-pass)...\n');
sound(bass(1:3*Fs), Fs); 
pause(3.5);
fprintf('Playing Treble (High-pass)...\n');
sound(treble(1:3*Fs), Fs);