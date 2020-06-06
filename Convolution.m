x = [0 0 0 1 1 1 0 1 2 3 4 0 0];
h = [1 2 1 -1];
index = -6:1:6;
xneg = x(end:-1:1);
xnegtwo = zeros(1, 13);

for i=1:4
    xnegtwo(i)=0;
end

for i=5:13
    xnegtwo(i)=xneg(i-2);
end

figure
subplot(3, 1, 1)
stem(index, x);
title('x(n)');
xlabel('Discrete time index');
ylabel('Signal amplitude');
subplot(312)
stem(index, xneg);
title('x(-n)');
xlabel('Discrete time index');
ylabel('Signal amplitude');
subplot(313)
stem(index, xnegtwo);
title('x(-n+2)');
xlabel('Discrete time index');
ylabel('Signal amplitude');

temp=conv(x, h)

x = [x 0];

h = fliplr(h);                              

convolution = [];
sum=0;
for i=1:11
   sum=0;
   sum = h(1)*x(i) + h(2)*x(i+1) + h(3)*x(i+2) + h(4)*x(i+3);
   convolution = [convolution sum];
end

convolution

figure
stem(-5:1:5, convolution);
title('My Convolution Function');
xlabel('Time Index');
ylabel('Amplitude');
set(gca, 'XTickLabel', -5:1:5)
set(gca, 'XTick', -5:1:5)
figure
hold on;
title('In-built Convolution');
stem(temp)
