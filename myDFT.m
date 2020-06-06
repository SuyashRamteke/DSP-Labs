function y= myDFT(x,N)
y=[]
for k=0:N-1
    sum=0;
    for n=0:N-1
        sum = sum + x(n+1)*exp(-1i*2*pi*k*n/N);
    end
    y(k+1)=sum/N;
end
end