[envHigh, envLow] = envelope(tempC,16,'peak');
envMean = (envHigh+envLow)/2;

plot(days,tempC, ...
     days,envHigh, ...
     days,envMean, ...
     days,envLow)
   
axis tight
legend('Hourly Temp','High','Mean','Low','location','best')
ylabel('Temp (\circC)')
xlabel('Time elapsed from Jan 1, 2011 (days)')
title('Logan Airport Dry Bulb Temperature (source: NOAA)')