% In embedded systems (like a smartwatch), you have to choose between
% FIR (stable, but needs more memory/power) and
% IIR (fast and efficient, but can be unstable).
% This script compares them visually.
% Scenario: Performance vs. Quality shootout
Fs = 1000;
% High-order FIR (very "steep" but many coefficients)
firFilt = designfilt('lowpassfir', 'FilterOrder', 100, ...
    'CutoffFrequency', 150, 'SampleRate', Fs);

% Low-order IIR (achieves similar steepness with way less math)
iirFilt = designfilt('lowpassiir', 'FilterOrder', 8, ...
    'HalfPowerFrequency', 150, 'SampleRate', Fs);

% Compare their "Step Response" - see how long they take to settle
subplot(2,1,1); stepz(firFilt); title('FIR Step Response (Takes longer)');
subplot(2,1,2); stepz(iirFilt); title('IIR Step Response (Very fast)');