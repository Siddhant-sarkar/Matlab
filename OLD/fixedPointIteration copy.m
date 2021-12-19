%fixed -Point iteration
% abs(g'(x))<1
% f(x)=0
% f(x)=x-g(x)
% f(x)=x-f(x)/f'(x)
clc 
clear all

syms x;

g=@(x) x-x^3-4*x^2+10;
df=@ (x) 1-3*x^2-8*x;
x=1:0.01:2;

for i=1:length(x)
    if (abs(df(x(i)))<1)
        
        continue;
    else
        fprintf("The given f(x) diverges\n");
        break;
    end
end

if(i==length(x))
        fprintf("The given f(x) converges\n");
end

