function [] =Guass()
clear
clc
n=input('Enter dimention of Augmented Square matrix:');
A=zeros(n,n);
b=zeros(n,1);
for i=1:n
    for j=1:n
       A(i,j)=input(sprintf('Enter value of A%d%d:',i-1,j-1));
    end
end
for i=1:n
    b(i,1)=input(sprintf('Enter Value of b%d:',i-1));
end
t=input('Enter Tolerance Value:');
for i=1:n
    row = abs(A(i,:));
    d=sum(row)-row(i);
    if row(i)<= d
        error('A must be strictly Diagonally Dominant Matrix');
    end
end
iter=100;
x=zeros(n,1);
y=zeros(n,1);
err= inf;
i=1;
disp(sprintf('Index\tX'))
while err>t & i<iter
    y=x;
    for j=1:n
    x(j)=(b(j)/A(j,j)) - (A(j,[1:j-1,j+1:n])*x([1:j-1,j+1:n]))/A(j,j);
    end
    disp(sprintf('%d\t%.5f\t',i,x))
    err=abs(y-x);
    i=i+1;
end