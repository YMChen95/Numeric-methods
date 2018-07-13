close all
clear all

t=[0 1.25 2.5 3.75 5 6.25 7.5 8.75 10];
y=[0.26 0.208 0.172 0.145 0.126 0.113 0.104 0.097 0.092];

n=2
    
   [p,S]=polyfit(t,y,n);
    
   
   py=polyval(p,t);
   norm(py-y);
p(1)*64+p(2)*8+p(3);
