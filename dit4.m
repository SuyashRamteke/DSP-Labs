%This is my recursive implementation of the Fast Fourier Transform

function f = dit4(x)

length = numel(x);
x = [x zeros(1, 4^ceil(nextpow2(length)/2)-length)];
length = numel(x);

f = zeros(length, 1);

if length==1
	f = x;
else
Wn = exp(-2*pi*j/length);           %This is the fundamental frequency
Wn4 = exp(-2*pi*j*4/length);  

for k=1:length/4
    for n = 1:length/4
    f(4*k-3) = f(4*k-3) + (x(n) + x(n+length/4) + x(n+length/2) + x(n+3*length/4))*(Wn4)^((k-1)*(n-1));
    f(4*k-2) = f(4*k-2) + (Wn^(n-1))*(x(n) - j*x(n+length/4) - x(n+length/2) + j*x(n+3*length/4))*(Wn4)^((k-1)*(n-1));
    f(4*k-1) = f(4*k-1) + (Wn^(2*(n-1)))*(x(n) - x(n+length/4) + x(n+length/2) - x(n+3*length/4))*(Wn4)^((k-1)*(n-1));
    f(4*k) = f(4*k) + (Wn^(3*(n-1)))*(x(n) + j*x(n+length/4) - x(n+length/2) - j*x(n+3*length/4))*(Wn4)^((k-1)*(n-1));
    end
end

end


end





