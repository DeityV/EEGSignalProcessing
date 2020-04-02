cubicMA   = sgolayfilt(tempC, 3, 7);
quarticMA = sgolayfilt(tempC, 4, 7);
quinticMA = sgolayfilt(tempC, 5, 9);
plot(days,[tempC cubicMA quarticMA quinticMA])
legend('Hourly Temp','Cubic-Weighted MA', 'Quartic-Weighted MA', ...
       'Quintic-Weighted MA','location','southeast')
ylabel('Temp (\circC)')
xlabel('Time elapsed from Jan 1, 2011 (days)')
title('Logan Airport Dry Bulb Temperature (source: NOAA)')
axis([3 5 -5 2])