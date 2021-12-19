format short
clear all
clc

f= @(x) 1./(1+x);
a = input('Please enter the value of a\n');
b = input('Please enter the value of b\n');
n = input('Enter the number of subintervals\n');

h = (b-a)/n;
i = 1:1:n-1;

S = f(a+i.*h);
out = (h./2).*(f(a)+f(b)+2.*(sum(S)));
fprintf("%f\n",out);

