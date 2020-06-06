F0 = 1/8;
F1 = -7/8;
Fs = 1;

cycles = 20;

T = 1;          
tmin = 0;         
tstep = T/100;    
tmax = cycles*T;       
t = tmin:tstep:tmax;

x0 = sin(2*pi*F0*t);   
x1 = sin(2*pi*F1*t);   

tstepS = 1/Fs;
ts = tmin:tstepS:tmax;    

s0 = sin(2*pi*F0*ts);      
s1 = sin(2*pi*F1*ts);

figure
stem(ts, s0, 'r');
title('Sampling of F0 = 1/8 Hz at a rate of 1 Hz');
xlabel('Time Index');
ylabel('Amplitude');

figure
hold on;
stem(ts, s0, 'r');
title('Sampling of F1 = -7/8 Hz at a rate of 1 Hz');
xlabel('Time Index');
ylabel('Amplitude');
hold off;

figure
hold on;
plot(t, x0);
stem(ts,s0, 'r');
title('Sampling of F1 = 1/8 Hz with original signal');
xlabel('Time Index');
ylabel('Amplitude');
hold off

figure
hold on;
plot(t, x1);
stem(ts,s1, 'r');
title('Sampling of F1 = -7/8 Hz with original signal');
xlabel('Time Index');
ylabel('Amplitude');
hold off

Fs1 = 2;         %Revised sampling rate

tstepS1 = 1/Fs1;
ts = tmin:tstepS1:tmax;
s1 = sin(2*pi*F1*ts);

figure
hold on;
plot(t, x1);
stem(ts,s1, 'r');
title('Sampling of F1 = -7/8 Hz at a rate of 2 Hz with original signal');
xlabel('Time Index');
ylabel('Amplitude');
hold off
