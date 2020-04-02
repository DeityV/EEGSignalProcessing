
%apply a moving average

%sampled the open-loop voltage across the input of an analog instrument
%interference of 60 Hz AC power line noise
%sampled the voltage with a 1 kHz sampling rate

fsResamp = 1020;
vResamp = resample(openLoopVoltage, fsResamp, fs);
tResamp = (0:numel(vResamp)-1) / fsResamp;
vAvgResamp = sgolayfilt(vResamp,1,17);
plot(tResamp,vAvgResamp)
ylabel('Voltage (V)')
xlabel('Time (s)')
title('Open-loop Voltage Measurement')
legend('Moving average filter operating at 60 Hz', ...
    'Location','southeast')