%textbook's exercise
close all;
clear all;
A=[1,2,2;
   4,4,2; 
   4,6,4];
b=[3;6;10];
[L,U]=myLU(A);
y = fwdSubst(L,b);
x = backSubst(U,y);
disp(x);
disp(L);
disp(U);
%my own test data
close all;
clear all;
A=[1,4,2,3;
   0,1,4,4;
   -1,0,1,0;
   2,0,4,1;]
b=[3;6;10;2];
[L,U]=myLU(A);
y=fwdSubst(L,b);
x=backSubst(U,y);
disp(x)
disp(L);
disp(U);

