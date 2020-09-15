function[]=Trapezoidal()
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
for i=1:n+1
    arr(i)=[a+(i-1)*h];
    arr1(i)=[double(f(arr(i)))];
end
 t=h/2;
 k=0;
 for i=1:n+1
     if i==1 | i==n+1
         k=k+arr1(i);
     else
         k=k+(2*arr1(i));
     end
 end
 t=t*k;
 disp(sprintf('T%d:%f',i-1,t))