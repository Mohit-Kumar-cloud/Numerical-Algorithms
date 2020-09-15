function[]=Midpoint()
clear
clc
syms f(x)
f(x)=input('Enter Function in small x:');
a=input('Enter Value of a:');
b=input('Enter Value of b:');
if a>b
    [a,b]=deal(b,a);
end
n=input('Enter Number of Iterations:');
h=double((b-a)/n);
arr=zeros(1,n+1);
arr1=zeros(1,n+1);
i=1;
for i=1:n
    arr(i)=[((a+h*(i-1))+(a+h*i))/2];
    arr1(i)=[double(f(arr(i)))];
end
t=0;
 for i=1:n
 t=t+arr1(i)*h;
 end
 disp(sprintf('T%d:%f',i-1,t))