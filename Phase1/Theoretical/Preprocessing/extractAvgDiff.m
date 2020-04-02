figure
deltaTempC = tempC - avg24hTempC;
deltaTempC = reshape(deltaTempC, 24, 31).';

plot(1:24, mean(deltaTempC))
axis tight
title('Mean temperature differential from 24 hour average')
xlabel('Hour of day (since midnight)')
ylabel('Temperature difference (\circC)')