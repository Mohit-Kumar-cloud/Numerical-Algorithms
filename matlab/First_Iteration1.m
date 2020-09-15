function []=First_Iteration1()
clear
clc
syms f(x)
f(x)=input('Enter Function in small x:');
x0=input('Enter initial value of x:');
t=input('Enter Tolerance Value:');
display(sprintf('Index\tXold\t\tXnew\t\tf(Xold)\t\tf(Xnew)'))
i=0;
x1=double(f(x0));
display(sprintf('%d\t\t%f\t%f\t%f\t%f',i,x0,x1,x1,double(f(x1))))
while abs(x1-x0)>t
    x0=x1;
    x1=double(f(x0));
    i=i+1;
    display(sprintf('%d\t\t%f\t%f\t%f\t%f',i,x0,x1,x1,double(f(x1))))
end