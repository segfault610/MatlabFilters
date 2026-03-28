Fs = 2000;
t = 0:1/Fs:1;
x = sin(2*pi*100*t) + sin(2*pi*400*t);
y = bandpass(x, [350 450], Fs);
subplot(2,1,1); plot(t,x);
subplot(2,1,2); plot(t,y);