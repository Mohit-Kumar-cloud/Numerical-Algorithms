function [] = False_Position()
clear
clc
syms f(x)
f(x) = input('Enter the Function in small x :');
a=input('Enter value of a:');
b=input('Enter value of b:');
t0=input('Enter Tolerance value:');
if a>b
    [a,b]=deal(b,a)
end
c = double((a*f(b)-b*f(a))/(f(b)-f(a)));
g=double(f(c));
h=double(f(a));
j=double(f(b));
er = g;
i=0;
disp(sprintf('Index\ta\t\t\tf(a)\t\tb\t\t\tf(b)\t\tc\t\t\tf(c)\t\terror'))
disp(sprintf('%d\t\t%f\t%f\t%f\t%f\t%f\t%f\t%f',i,a,h,b,j,c,g,er))
while g~=0 & abs(g)>=t0 
    if sign(f(a))*sign(g)>0
        a=c;
    else
        b=c;
    end
  c=double((a*f(b)-b*f(a))/(f(b)-f(a)));
  er=abs(g-double(f(c)));
  g=double(f(c));
  h=double(f(a));
  j=double(f(b));
  i=i+1;
  disp(sprintf('%d\t\t%f\t%f\t%f\t%f\t%f\t%f\t%f',i,a,h,b,j,c,g,er))
end