
%apply a moving average

%sampled the open-loop voltage across the input of an analog instrument
%interference of 60 Hz AC power line noise
%sampled the voltage with a 1 kHz sampling rate

load clockex

yMovingAverage = conv(x,ones(5,1)/5,'same');
ySavitzkyGolay = sgolayfilt(x,3,5);
plot(t,x, ...
     t,yMovingAverage, ...
     t,ySavitzkyGolay)

legend('original signal','moving average','Savitzky-Golay')