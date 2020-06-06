%This is my recursive implementation of the Fast Fourier Transform

function f = dit(x)

length = numel(x);
x = [x zeros(1, 2^nextpow2(length)-length)];
length = numel(x);

f = zeros(length, 1);

if length==1
	f = x;
else
Wn = exp(-2*pi*j/length);          %This is the fundamental frequency
w = 1;          %This will be used while combining the two recursive results


oddx = x(1:2:length-1);           %An array of the odd indexed values
evenx = x(2:2:length);            %An array of the even indexed values

A0 = dit(oddx);                   %The FFT of the odd indexed values
A1 = dit(evenx);                  %The FFT of the even indexed values, computed recursively

for k=1:length/2
    
	f(k) = A0(k) + w*A1(k);              % Adding the odd and even parts of the FFT recursively
	f(floor(k + length/2)) = A0(k) - w*A1(k);   %Using the recursive property of twiddle factor
	w = w*Wn;                            %Multiplying the frequency factor 
end
end
end





