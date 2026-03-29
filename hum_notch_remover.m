% Scenario: Removing electrical interference from a signal
Fs = 1000;              % Sample rate
t = 0:1/Fs:2;           % 2 seconds of data
clean_sig = sin(2*pi*5*t); % Our heartbeat or slow signal
hum = 0.5 * sin(2*pi*60*t); % 60Hz power line hum
x = clean_sig + hum;    % Combined signal
% Design a notch filter to remove exactly 60Hz
wo = 60/(Fs/2);  bw = wo/35;
[b, a] = iirnotch(wo, bw);
y = filter(b, a, x);
subplot(2,1,1); plot(t, x); title('Signal with 60Hz Hum'); xlim([0 0.5]);
subplot(2,1,2); plot(t, y); title('Cleaned Signal'); xlim([0 0.5]);
