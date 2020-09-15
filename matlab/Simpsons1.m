function[]=Simpsons1()
clear
clc
syms f(x)
f(x)=input('Enter Function in small x:');
a=input('Enter Value of a:');
b=input('Enter Value of b:');
n=input('Enter Value of n:');
if a>b
    [a,b]=deal(b,a);
end
h=double((b-a)/n);
arr=zeros(1,n+1);
arr1=zeros(1,n+1);
i=1;
for i=1:n+1
    arr(i)=[(a+h*(i-1))];
    arr1(i)=[double(f(arr(i)))];
end
t=h/3;
k=0;
 for i=1:n+1
 if i==1 |i==n+1
     k=k+arr1(i);
 elseif mod(i,2)==0
     k=k+4*arr1(i);
 else
     k=k+2*arr1(i);
 end
 end
 t=t*k;
 disp(sprintf('T%d:%f',i-1,t))