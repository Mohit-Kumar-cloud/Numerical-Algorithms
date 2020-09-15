function []=Newton()
clear
clc
syms f(x) g(x)
f(x)=input('Enter Function in small x:');
g(x)=diff(f(x));
x0=input('Enter value of X0:');
n=input('Enter number of Iterations:');
i=0;
disp(sprintf('Index\tX0ld\t\tXnew\tf(Xold)\t\tf''(Xold)'))
while i<=n
    j=double(f(x0));
    k=double(g(x0));
    x1=double(x0-(j/k));
    disp(sprintf('%d\t%f\t%f\t%f\t%f',i,x0,x1,j,k))
    x0=x1;
    i=i+1;
end
    