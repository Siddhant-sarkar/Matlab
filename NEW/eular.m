format short;
clear all; 
clc

f = @(x,y) (y-x)./(y+x);
x = input('Enter the initial value of x\n');
y = input('Enter the initial value of y(x)\n');
h = input('Enter the step size\n');
X = input('Enter X at which Y is required\n');

Varialbes = {'x','y','fxy','NewY'};
k = 1;
while X >=x
%     fprintf("Value of y at x = %f is %f",x,y);
    fxy = f(x,y);
    newY = y+h.*fxy;
    rsl(k,:) = [x y fxy newY];
    k = k+1;
    x = x+h;
    y = newY;
end
array2table(rsl)