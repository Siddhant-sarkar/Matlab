format short
clear all
clc

A = [10 8 -3 1 ; 2 10 1 -4 ; 3 -4 10 1 ; 2 2 -3 10];
B = [16 9 10 11];

maxerr = 1e-3;
err = Inf;
w = 1.2;
x = zeros(1,size(A,1));
tr = 0;

while(maxerr < err)
    x_old = x ;
    for i = 1:size(A,1)
        sum = 0;
        for j = 1:i-1
            sum = sum + A(i,j)*x(j);
        end
        for j = i+1 : size(A,1)
            sum = sum + A(i,j)*x_old(j);
        end
        x(i)=(1-w)*x_old(i)+w*((1/A(i,i))*(B(i)-sum));
    end
    err = abs(x_old -x);
    tr=tr+1;
end
tr
disp(x)
