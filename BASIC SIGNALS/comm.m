clc;
clear all;
close all;
m=input('enter the value of m');
n=-10:10;
for i=1:length(n)
 if n(i)==0
 y(i)=1;
 else
 y(i)=0;
 end
end
subplot(2,3,1)
stem(n,y)
xlabel('n')
ylabel('y')
title('unit sample sequence');
for i=1:length(n)
 if n(i)<0||n(i)>m
 y(i)=0;
 else
 y(i)=1;
 end
end
subplot(2,3,2)
stem(n,y)
xlabel('n')
ylabel('y')
title('unit stem sequence u(n)-u(n-M)');
for i=1:length(n)
 if n(i)<0
 y(i)=0;
 else
 y(i)=n(i);
 end
end
subplot(2,3,3)
stem(n,y)
xlabel('n')
ylabel('y')
title('Ramp sequence');
t=-pi/2:0.1:pi/2;
y=sin(2*pi*t);
subplot(2,3,4)
stem(t,y)
xlabel('t');
ylabel('y');
title('sine')
t=-pi/2:0.1:pi/2;
y=cos(2*pi*t);
subplot(2,3,5)
stem(t,y)
xlabel('t');
ylabel('y');
title('cosine')