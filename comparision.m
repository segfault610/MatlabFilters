Fs = 1000;
t = 0:1/Fs:2;
x = sin(2*pi*5*t) + 0.5*sin(2*pi*50*t) + 0.3*sin(2*pi*100*t);
% Butterworth
[b1,a1] = butter(4, 20/(Fs/2));
y1 = filter(b1,a1,x);
% Chebyshev
[b2,a2] = cheby1(4, 1, 20/(Fs/2));
y2 = filter(b2,a2,x);
figure;
subplot(3,1,1); plot(t,x); title('Original Signal');
subplot(3,1,2); plot(t,y1); title('Butterworth Output');
subplot(3,1,3); plot(t,y2); title('Chebyshev Output');