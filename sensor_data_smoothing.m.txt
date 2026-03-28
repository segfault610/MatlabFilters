% Scenario: Smoothing a jittery temperature or GPS sensor
t = 1:100;
ground_truth = [ones(1,50), ones(1,50)*2]; % A step change
noise = 0.2 * randn(size(t));
x = ground_truth + noise;

% Apply a 10-point moving average filter
windowSize = 10;
b = (1/windowSize)*ones(1, windowSize);
a = 1;
y = filter(b, a, x);

plot(t, x, '.', t, y, 'r-', 'LineWidth', 2);
legend('Raw Jittery Sensor', 'Smoothed Data');
title('Sensor Data Smoothing');