clc
clear all
f=@(x) cos(x)-1/2-sin(x);
df=@(x) -sin(x)-cos(x);

tol=0.000001;
x=0:10;
max=100;

for i=1:length(x)-1
    if f(x(i))*f(x(i+1))<0
    fprintf("Root lies in the inteval(%d,%d) \n",x(i),x(i+1));
    a=x(i);
    b=x(i+1);
    x0=(a+b)/2;
    j=0;
    while(j<max)
        x1=x0-f(x0)/df(x0);
        if abs(x1-x0)<tol
            fprintf("The final roots are : %f\n",x1);
            break;
        else
            x0=x1;
            j=j+1;
        end
    end
    end
end

    
  
  
    
