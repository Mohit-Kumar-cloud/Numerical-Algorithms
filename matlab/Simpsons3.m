function[]=Simpsons3()
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
t=(3*h)/8;
k=0;
 for i=0:n
 if i==0 |i==n
     k=k+arr1(i+1);
 elseif mod(i,3)==0
     k=k+2*arr1(i+1);
 else
     k=k+3*arr1(i+1);
 end
 end
 t=t*k;
 disp(sprintf('T%d:%f',i-1,t))