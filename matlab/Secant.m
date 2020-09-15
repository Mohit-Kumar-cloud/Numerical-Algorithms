function []=Secant()
clear
clc
syms f(x)
f(x)=input('Enter Function in small x:');
x0=input('Enter value of X0:');
x1=input('Enter value of X1:');
n=input('Enter number of Iterations:');
i=2;
disp(sprintf('Index\tXn-2\t\tXn-1\t\tXn\t\t\tf(Xn-2)\t\tf(Xn-1)'))
while i<=n
    j=double(f(x0));
    k=double(f(x1));
    x2=double(x1-((k*(x1-x0))/(k-j)));
    disp(sprintf('%d\t\t%f\t%f\t%f\t%f\t%f',i,x0,x1,x2,j,k))
    x0=x1;
    x1=x2;
    i=i+1;
end
    