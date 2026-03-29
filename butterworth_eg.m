Fs = 1000;
t = 0:1/Fs:2;
% Signal with noise
x = sin(2*pi*5*t) + 0.5*sin(2*pi*100*t);
n = 4;                  % Filter order
Wn = 20/(Fs/2);         % Cutoff frequency
[b, a] = butter(n, Wn); % Butterworth filter
% Apply filter
y = filter(b, a, x);
% Plot
figure;
subplot(2,1,1); plot(t,x); title('Original Signal');
subplot(2,1,2); plot(t,y); title('Butterworth Filtered Signal');