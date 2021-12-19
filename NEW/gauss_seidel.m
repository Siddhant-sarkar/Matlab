format short
clear all
clc

A = [10 8 -3 1 ; 2 10 1 -4 ; 3 -4 10 1 ; 2 2 -3 10];
B = [16 9 10 11];
maxerr = 1e-3;
x = zeros(1,size(A,1));
err1 = Inf;

itr = 0;

while (err1 > maxerr)
    x_old = x ;
    for i = 1:size(A,1)
        sum  = 0;
        for j = 1 : i-1
            sum = sum +A(i,j)*x(j);
        end
        for j = i+1 : size(A,1)
            sum = sum +A(i,j)*x_old(j);
        end
        x(i)= (1/A(i,i))*(B(i)-sum);
    end
    itr = itr +1;
    disp(x_old);
    err1 = abs(x_old-x);

end

fprintf("The methord converged in %d iterations\n",itr);
disp(x);

       
