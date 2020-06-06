close all; clear all; clc;
f=2e3;
t=0:1/500000:4*1/f;
x=3*sin(2*pi*f*t);
figure
fs1=3e3;
t1=0:1/fs1:4*1/f;
x1=3*sin(2*pi*f*t1);
fs2=5e3;
t2=0:1/fs2:4*1/f;
x2=3*sin(2*pi*f*t2);
subplot(2,1,1)
hold on;
plot(t,x)
stem(t1,x1);
title('Sampling at 3kHz');
xlabel('Time(s)');
ylabel('Amplitude');
subplot(2,1,2);
hold on;
plot(t,x)
stem(t2,x2);
title('Sampling at 5kHz');
xlabel('Time(s)');
ylabel('Amplitude');


