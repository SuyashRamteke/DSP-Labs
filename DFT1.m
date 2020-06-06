close all;clear all; clc;
F = 2000;
Fs = 8000;
t = 0:1/(200*Fs):0.001-1/(200*Fs);
t1 = 0:1/Fs:0.001-1/Fs;
x_ct = 3*sin(2*pi*F*t);
x_dt = 3*sin(2*pi*F*t1);
figure
stem(t1,x_dt)
title('Original Signal Sampled at 8kHz');
xlabel('Time');
ylabel('Amplitude');
%a part
figure
spectrum = (fft(x_dt,1000));
k=0:length(spectrum)-1
plot(2*pi*k/length(spectrum),abs(spectrum))
title('Frequency Spectrum');
xlabel('Digital Frequency');
ylabel('Magnitude');
%b part
figure
subplot(311)
spectrum = fft(x_dt,5)/5;
k=0:length(spectrum)-1
stem(2*pi*k/length(spectrum),abs(spectrum))
title({'In-Built DFT','N=5'})
ylabel('Magnitude')
xlabel('Digital Frequency')
subplot(312)
spectrum = (fft(x_dt,50))/50;
k=0:length(spectrum)-1
stem(2*pi*k/length(spectrum),abs(spectrum))
title('N=50')
ylabel('Magnitude')
xlabel('Digital Frequency')
subplot(313)
spectrum = (fft(x_dt,100))/100;
k=0:length(spectrum)-1
stem(2*pi*k/length(spectrum),abs(spectrum))
title('N=100')
ylabel('Magnitude')
xlabel('Digital Frequency')

%c part

x_dt=[x_dt zeros(1,100)];

figure;
subplot(311)
y1 = myDFT(x_dt,5);
k=0:length(y1)-1
stem(2*pi*k/length(y1),abs(y1))
title({'Our DFT Function','N=5'})
ylabel('Magnitude')
xlabel('Digital Frequency')

subplot(312)
y2 = myDFT(x_dt,50);
k=0:length(y2)-1
stem(2*pi*k/length(y2),abs(y2))
title('N=50')
ylabel('Magnitude')
xlabel('Digital Frequency')

subplot(313)
y3 = myDFT(x_dt,100);
k=0:length(y3)-1
stem(2*pi*k/length(y3),abs(y3))
title('N=100')
ylabel('Magnitude')
xlabel('Digital Frequency')

