Fs = 1000;
t = 0:1/Fs:2;
% Signal with harmonics
x = sin(2*pi*5*t) + 0.5*sin(2*pi*50*t) + 0.3*sin(2*pi*100*t);
% Comb notch filter
f0 = 50;
bw = (f0/(Fs/2))/35;
[b,a] = iircomb(Fs/f0, bw, 'notch');
y = filter(b,a,x);
subplot(2,1,1); plot(t,x); title('With Harmonic Noise');
subplot(2,1,2); plot(t,y); title('After Comb Notch Filter');