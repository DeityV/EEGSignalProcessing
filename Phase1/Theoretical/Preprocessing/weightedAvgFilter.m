
%a higher value of alpha will have less smoothing
alpha = 0.45;
exponentialMA = filter(alpha, [1 alpha-1], tempC);
plot(days,tempC, ...
     days-fDelay/24,binomialMA, ...
     days-1/24,exponentialMA)

axis tight
legend('Hourly Temp', ...
       'Binomial Weighted Average', ...
       'Exponential Weighted Average','location','best')
ylabel('Temp (\circC)')
xlabel('Time elapsed from Jan 1, 2011 (days)')
title('Logan Airport Dry Bulb Temperature (source: NOAA)')