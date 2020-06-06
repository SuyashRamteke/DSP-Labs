function result = overlapAndSave(x, h, L)

P = numel(h);
result = [];

x = [x zeros(1, L-mod(numel(x),L))];
numBlocks = numel(x)/L;

for i=1:1:numBlocks-1
    i*L+P-1
block = x((i-1)*L+1:i*L+P-1);
temp = linearConv(block, h);
result = [result temp(P:L+P-1)];    
%result = [result(1:(i-1)*L) result((i-1)*L+1:(i-1)*L+P-1)+temp(1:P-1) temp(P:L+P-1)];
%result = [result temp];
end
end
