format short;
clear all;
clc;

f = @(x)cos(x) - log(x)+ exp(x);
a = input('Enter the lower limit \n');
b = input('Enter the upper limit\n');
n = input('Enter the number of subintervals\n');
h = (b-a)/n;


if rem(n,2)==1
    fprintf("Enter and even number\n");
    n = input('Enter the value of n\n');
end
k = 1:1:n-1;
S = f(a+(k.*h));
S_ev = sum(S(2:2:n-1));
S_odd = sum(S(1:2:n-1));

out = (h/3).*(f(a)+f(b)+2.*(S_odd)+4.*(S_ev));
fprintf("%f\n",out);