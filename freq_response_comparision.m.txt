Fs = 1000;
firFilt = designfilt('lowpassfir','PassbandFrequency',100,'StopbandFrequency',150,'SampleRate',Fs);
iirFilt = designfilt('lowpassiir','PassbandFrequency',100,'StopbandFrequency',150,'SampleRate',Fs);
fvtool(firFilt, iirFilt);