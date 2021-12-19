clc
clear all;
 
x0=input("Enter the value of x0\n");
x1=input("Enter the value of x1\n");
tol=input("Enter the value of tolereance\n");
max=100;
f=@(x) cos(x)-1/2-sin(x);
counter=0;
while abs(x1-x0)>tol
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    x0=x1;
    x1=x2;
    counter=counter+1;
end
fprintf("THe final value of roots is %f\n",x2);
fprintf("THe number of iterations are: %d\n",counter);
