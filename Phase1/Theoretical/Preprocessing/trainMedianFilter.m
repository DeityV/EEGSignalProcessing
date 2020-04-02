
%apply a moving average

%sampled the open-loop voltage across the input of an analog instrument
%interference of 60 Hz AC power line noise
%sampled the voltage with a 1 kHz sampling rate

load train
y(1:400:end) = 2.1;
plot(y)