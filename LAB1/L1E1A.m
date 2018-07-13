close all;
clear all;


tic
for i = 1:1000
    t(i) = 2*i;
    y(i) = sin (t(i));
end
toc

clear;

%verctorized implementation method
tic
t= 2:2:2000;
y=sin(t);

toc

clear;