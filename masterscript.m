clear all;close all;clc;
x = [ones(1, 8)];
fft1 = fft(x);
fft2 = dif(x);
axis = (0:7)/8;

figure;
subplot(211);
stem(axis, fft1);
xlabel('Normalized frequency');
ylabel('Amplitude');
title('Inbuilt FFT of sequence 1');
subplot(212);
stem(axis, fft2);
xlabel('Normalized frequency');
ylabel('Amplitude');
title('Radix 2 Decimation in Frequency FFT of sequence 1');

x = [0.5*ones(1, 4), zeros(1, 4)];
fft1 = fft(x);
fft2 = dit(x);
fft3 = dif(x);

figure;
subplot(311);
stem(axis, fft1);
xlabel('Normalized frequency');
ylabel('Amplitude');
title('Inbuilt FFT');
subplot(312);
stem(axis, fft2);
xlabel('Normalized frequency');
ylabel('Amplitude');
title('Radix 2 Decimation in Time FFT');
subplot(313);
stem(axis, fft3);
xlabel('Normalized frequency');
ylabel('Amplitude');
title('Radix 2 Decimation in Frequency');

n = 0:1:15;
x = cos(0.5*pi*n);
fft1 = fft(x);
fft2 = dit4(x);

figure;
subplot(211);
stem(n/16, fft1);
xlabel('Normalized frequency');
ylabel('Amplitude');
title('Inbuilt FFT');
subplot(212);
stem(n/16, fft2);
xlabel('Normalized frequency');
ylabel('Amplitude');
title('Radix 4 Decimation in Time FFT');