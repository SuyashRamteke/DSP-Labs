clear all;clc;close all;
As=-40;
Ap=-0.5;
delP=10^(Ap/20);
delS=10^(As/20);
ws=2*pi*10^3/4000;
wp=2*pi*800/4000;
syms s
w=-pi:pi/100:pi;
s = i*w;
N = 5;
wc= real(wp/(((1/delP^2)-1)^(1/(2*N))));
H_mag=sqrt(1./(1+(w/wc).^(2*N)));

figure
subplot(211);
plot(w,H_mag);
title('Butterworth Response')
xlabel('Digital Frequency')
ylabel('Magnitude');
subplot(212);
plot(w,mag2db(H_mag));
title('Butterworth Response')
xlabel('Digital Frequency')
ylabel('Magnitude in dB');


f=4000;
f1 = 700;
f2 = 1200;
t= 0:1/f:0.05;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);

figure
[b,a] = butter(5,Fc/(Ft/2));
subplot(211);
stem(filter(b,a,x1));
title('Output with 700 Hz input');
xlabel('Time');
ylabel('Magnitude');
subplot(212);
stem(filter(b,a,x2));
title('Output with 1200 Hz input');
xlabel('Time');
ylabel('Magnitude in dB');