%This is my recursive implementation of the Fast Fourier Transform

function f = dif(x)

length = numel(x);
x = [x zeros(1, 2^nextpow2(length)-length)];
length = numel(x);

f = zeros(length, 1);

if length==1
	f = x;
else
Wn = exp(-2*pi*j/length);           %This is the fundamental frequency
w = 1;                              %This will be used while combining the two recursive results
twiddle = [];
for i = 1:length/2
twiddle = [twiddle w];
w = w*Wn;
end

gx = x(1:1:length/2) + x(1+length/2:1:length);          %An array of the odd indexed values
hx = x(1:1:length/2)- x(1+length/2:1:length) ;            %An array of the even indexed values
hx = hx.*twiddle;

A0 = dif(gx);                   %The FFT of the odd indexed values
A1 = dif(hx);                  %The FFT of the even indexed values, computed recursively

for k=1:(floor(length/2))
	f(2*k-1) = A0(k);              % Adding the odd and even parts of the FFT recursively
	f(2*k) = A1(k);   %Using the recursive property of twiddle factor
	                            %Multiplying the frequency factor 
end
end
end





