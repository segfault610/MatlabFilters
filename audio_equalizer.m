load handel.mat
% Boost mid frequencies (500–2000 Hz)
mid = bandpass(y, [500 2000], Fs);
y_eq = y + 1.5*mid;
t = (0:length(y)-1)/Fs;
subplot(2,1,1);
plot(t,y); title('Original Audio');
subplot(2,1,2);
plot(t,y_eq); title('Equalized (Mid Boost)');
%sound(y_eq,Fs);