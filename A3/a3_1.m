close all;
clear all;

fs='sin(10*x)-x';
f=inline(fs,'x');
x=-2:0.01:2;
y=f(x);
plot(x,y);