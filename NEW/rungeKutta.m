format short;
clear all;
clc

f=@(x,y) x.*(y.^(1/3));
x = input('Enter the inital x \n');
y = input('Enter the initial y(x)\n');
X = input('Enter the final X \n');
h = input('Enter the step size \n');


while X>=x
    fprintf("Value of Y(x) : %f at x = %f \n",y,x);
    k1 = h.*f(x,y);
    k2 = h.*f(x+h/2,y+k1/2);
    k3 = h.*f(x+h/2,y+k2/2);
    k4 = h.*f(x+h,y+k3);
    k = (k1 + 2.*k2 + 2.*k3 + k4 ) ./6;
    x = x + h;
    y = y + k;
end

