[x, Fs] = audioread('handel.wav');
y = lowpass(x, 3000, Fs);
sound(y, Fs);
