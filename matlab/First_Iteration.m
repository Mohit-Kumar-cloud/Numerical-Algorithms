function []=First_Iteration()
clear
clc
syms f(x)
f(x)=input('Enter Function in small x:');
x0=input('Enter initial value of x:');
n=input('Enter Number of Itreations:');
n=int64(n);
i=0;
display(sprintf('Index\tXold\t\tXnew\t\tf(Xold)\t\tf(Xnew)'))
while i<n
    x1=double(f(x0));
    i=i+1;
    display(sprintf('%d\t\t%f\t%f\t%f\t%f',i,x0,x1,x1,double(f(x1))))
    x0=x1;
end