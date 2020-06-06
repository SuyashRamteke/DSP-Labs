f1=500e3;
f=2e3;
n=5;
t=0:1/f1:n*1/f;
x=3*sin(2*pi*f*t);
figure
plot(t,x)
title('Continuous sinusoidal signal');
xlabel('Time(s)');
ylabel('Amplitude');


