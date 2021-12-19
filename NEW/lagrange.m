format short;
clear all;
clc;

x = [110 130 160 190];
y = [10.8 8.1 5.5 4.8];

z = input("Input the value of z");
n = length(x);
l = ones(1,size(x,2));
for i = 1 : n
    l(i) = 1;
    for j = 1 : n
        if(j~=i)
            l(i)=((z-x(j))/(x(i)-x(j)))*l(i);
        end
    end
end
sum = 0;
for i=1:n
    sum=sum+l(i)*y(i);
end
fprintf("The interpolated value is %f\n",sum);
