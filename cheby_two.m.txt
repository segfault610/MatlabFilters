Fs = 1000;
t = 0:1/Fs:2;
% Signal with multiple frequencies
x = sin(2*pi*5*t) + 0.5*sin(2*pi*50*t) + 0.3*sin(2*pi*100*t);
% Chebyshev Type II parameters
n = 4;              % Filter order
Rs = 40;            % Stopband attenuation (dB)
Wn = 20/(Fs/2);     % Cutoff frequency
[b, a] = cheby2(n, Rs, Wn);
% Apply filter
y = filter(b, a, x);
% Plot
figure;
subplot(2,1,1); plot(t,x); title('Original Signal');
subplot(2,1,2); plot(t,y); title('Chebyshev Type II Filtered Signal');