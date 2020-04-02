fDelay = (length(coeff24hMA)-1)/2;
plot(days,tempC, ...
     days-fDelay/24,avg24hTempC)
axis tight
legend('Hourly Temp','24 Hour Average','location','best')
ylabel('Temp (\circC)')
xlabel('Time elapsed from Jan 1, 2011 (days)')
title('Logan Airport Dry Bulb Temperature (source: NOAA)')