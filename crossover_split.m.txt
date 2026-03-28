[x, Fs] = audioread('handel.wav');
low = lowpass(x, 500, Fs);
high = highpass(x, 500, Fs);
subplot(3,1,1); plot(x);
subplot(3,1,2); plot(low);
subplot(3,1,3); plot(high);