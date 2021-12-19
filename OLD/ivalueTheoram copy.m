n=input("Enter the values of n \n");
f=@(x) x.^2-4*x-2;
h=1;
for i=-n:h:n
    if(f(i)*f(i+h)<0)
        a=i;
        b=i+h;
        fprintf("THe root of A : %d and B : %d\n",a,b);
    end
end



