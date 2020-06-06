a = input('Enter the value for "a" :')
u = ones(1,10);
n = 1:1:10;
output = a.^n.*u;
stem(n,output)   
if (abs(n)<1)
    'System is stable'
elseif (abs(n)==1)
        'System is marginally stable'
else
    'System is unstable'
end