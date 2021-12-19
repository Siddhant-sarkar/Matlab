clc 
clear all

x0=input('Enter the intitial guess x0\n');
tol=input('Enter the tolerance value\n');
N=input('Enter the max numnber of iterations\n');
f = @(x) 2*sin(pi*x)+x;
f1 =@(x) 2*pi*cos(pi*x)+1;
g = @(x) x-f(x)/f1(x);



nit=0;
while( nit<=N)
    x1= g(x0);
    if(abs(x1-x0)<tol)
        fprintf("The root of the given equation is %f\n",x1);
        break;
    else
        x0=x1;
    end
    nit=nit+1;
end

if(nit==N)
    fprintf('Change the g(x) as it is not suitable\n');
end

