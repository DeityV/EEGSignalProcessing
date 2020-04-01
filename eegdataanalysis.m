A=readtable('eegdat.csv');
figure;
x = A{:,1};
plot(x);
title('EEg Data Signal with noise');
xlabel('x(t)');
ylabel('t(milliseconds)');

%moving average filter
a = 1;
b = [1/4 1/4 1/4 1/4];

y = filter(b,a,x);

t = 1:length(x);
plot(t,x,'--',t,y,'-')
legend('Original Data','Filtered Data')

%Savitzky-Golay filters
y = sgolayfilt(x,order,framelen);