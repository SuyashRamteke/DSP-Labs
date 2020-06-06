close all; clear all; clc;
f=2000;
t=0:1/30000:3/2000;
t1=0:1/60000:3/2000;
x1=3*sin(2*pi*f*t1);
x=downsample(x1,4);
translate = abs(min(x));
x=x + translate; %Translate it to origin temporarily for easier calculations
step = 6/7;
y=x/step;
error=0;
for i=1:length(t)
       if(rem(x(i),step)<step/2)
           y(i) = x(i)-rem(x(i),step);
       else 
           y(i) = x(i)+step-rem(x(i),step);
       end
    error = error + (x(i)-y(i))^2;
end
error=error/length(t)
x=x-translate;
y=y - translate;
stem(t,y)
hold on;
plot(t1,x1,'m');
xlabel('Time');
ylabel('Magnitude');
title('Sampling of a Signal');
axis([0 3/2000 -3.2 3.2]);