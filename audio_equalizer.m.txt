load handel.mat
% Boost mid frequencies (500–2000 Hz)
mid = bandpass(y, [500 2000], Fs);
y_eq = y + 1.5*mid;
t = (0:length(y)-1)/Fs;
subplot(3,1,1);
plot(t,y); title('Original Audio');
subplot(3,1,2);
plot(t,y_eq); title('Equalized i.e. Mid Boost');
subplot(3,1,3);
plot(t,mid); title("Mid frequencies");
%sound(y_eq,Fs);