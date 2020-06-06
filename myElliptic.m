clear all;clc;close all;
Wp=2*800/4000;
Ws=2*1000/4000;
Rp=0.5;
Rs=40;
[N, Wp] = ellipord(Wp, Ws, Rp, Rs);
[b,a] = ellip(N,Rp,Rs,Wp);
freqz(b,a);
f=4000;
f1 = 700;
f2 = 1100;
t= 0:1/(f):0.04;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);

figure
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