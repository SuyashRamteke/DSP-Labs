close all;clear all;clc;
x1 = [1 2 3 0 0];
x2 = [2 3 0 0 0];
y1 = fft(x1,5);
y2 = fft(x2,5);
y3 = y1.*y2
figure
k=0:4;
subplot(211)
stem(2*pi*k/5,abs(y1));
title('DFT of X1');
xlabel('Digital Frequency');
ylabel('Magnitude');

subplot(212)
stem(2*pi*k/5,abs(y2));
title('DFT of X2');
xlabel('Digital Frequency');
ylabel('Magnitude');

figure
subplot(211)
stem(2*pi*k/5,abs(y3));
title('Product of DFT of X1 and X2');
xlabel('Digital Frequency');
ylabel('Magnitude');
subplot(212)
op = cconv(x1,x2,5);
stem(2*pi*k/5,abs(fft(op,5)))
title('DFT of Circular convolution of X1 and X2');
xlabel('Digital Frequency');
ylabel('Magnitude');

figure
subplot(211)
stem(2*pi*k/5,myIDFT(y3,5));
title('IDFT of Product of DFT of X1 and X2');
xlabel('Digital Frequency');
ylabel('Magnitude');
subplot(212)
op = cconv(x1,x2,5);
stem(2*pi*k/5,op)
title('Circular convolution of X1 and X2');
xlabel('Digital Frequency');
ylabel('Magnitude');
