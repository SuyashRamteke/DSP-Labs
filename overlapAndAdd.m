function result = overlapAndAdd(x, h, L)

P = numel(h);
result = [];

x = [x zeros(1, L-mod(numel(x),L))];
numBlocks = numel(x)/L;

for i=1:1:numBlocks
block = x((i-1)*L+1:i*L);
fftLength=length(block)+length(h)-1;
temp = ifft(fft(block,fftLength).*fft(h,fftLength));
if i>1
    result = [result(1:(i-1)*L) result((i-1)*L+1:(i-1)*L+P-1)+temp(1:P-1) temp(P:L+P-1)];
else
    result = [result temp];
end
end


