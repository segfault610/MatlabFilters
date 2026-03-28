Fs = 1000;
t = 0:1/Fs:1;
x_clean = sin(2*pi*50*t);
x = x_clean + 0.5*randn(size(t));
d = designfilt('lowpassfir','PassbandFrequency',100,'StopbandFrequency',150,'SampleRate',Fs);
y = filter(d, x);
subplot(3,1,1); plot(t,x); title('Noisy');
subplot(3,1,2); plot(t,y); title('Filtered');
subplot(3,1,3); freqz(d);