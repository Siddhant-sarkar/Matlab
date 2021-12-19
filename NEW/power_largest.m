format short
clear all
clc

A = [2 -1 0 ; -1 2 -1 ; 0 -1 2];
B = A;
x = ones(1,size(A,1))';
% x = [1; 1; 1];
x
choice = menu('Pick the choice','Largest','Smallest','Near to a number');
if choice == 1
elseif choice == 2
    B = inv(A);
else
    lam0 = input('Enter value of lambda\n');
    D = A - lam0.*eye(size(A));
    B = inv(D);
end
iter = 0;
err = 1000000;
max_err=1e-5;
lam1 = Inf;

fprintf("\tIter \tEign Value \tEignVector\n");
fprintf("\t =============================== \n");
while all(err > max_err)
    xold = x;
    Y = B*x;
    eignval = max(abs(Y));
    eignvec = Y./eignval;
    x = eignvec;
    err = abs(sum(xold-x));
    lam1 = eignval;
    display([iter lam1 x']);
    iter = iter +1;
end

if choice == 1 
    fprintf("The largest eign value is %f",lam1);
elseif choice == 2
    fprintf("The smallest eign value id %f",1/lam1);
else
    fprintf("The eign value close to %f",(1/lam1)+lam0);
end

