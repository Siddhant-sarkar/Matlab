clear all;
a=input("Enter a\n");
b=input("Enter b\n");
e=input("Enter the tolerance value\n");

% we use . when we need to do element by element multiplication since the
% answers are stored in an array.
f=@(x) x.^2-4*x-2; 
if(f(a)*f(b)>0)
    fprintf("The values a and b are wrong and the root doesnot exist\n");
else
    k=0;
    p=(a+b)/2;
%     e=abs(f(p));   To enter the tolerance value 
    while(abs(b-a)>e)
%         fprintf("The root is %d\n",p);
        if(f(p)*f(a)<0)
            b=p;
        else
            a=p;
        end
        % This line what drives the code towards the answer 
        % we are recalculating the values.
        p=(a+b)/2;
%         e=abs(f(p)); 
        k=k+1;
    end
    fprintf("The Final root is %d in %d Iterations\n",p,k);
end

    
 



