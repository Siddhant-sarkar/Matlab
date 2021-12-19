% Lu Decomposition
clc
clear all
%  A=[3 1 6 ;-6 0 -16;0 8 -17];
a=[1 -1 2 -1 ; 1 1 1 0 ; 2 -2 3 -3 ; 1 -1 4 3];
b=[-8;-2;-20;4];
A=[a b];
n=size(A,1);
L=eye(n);

for j=1:n
    for i=j+1:n
        m = A(i,j)/A(j,j);
        L(i,j)=m;
        for k=1:n+1
            A(i,k)=A(i,k)-m*A(j,k);
        end
    end
end
A
L
x(n)=A(n,n+1)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i) = (A(i,n+1)-sum)/A(i,i);
end
fprintf("solution of given system is : \n")
x

    
