clear all;
close all;
A=eye(16);
A(1,[1,2,3,4]) = 1;
A(2,[5,6,7,8]) = 1;
A(3,[9,10,11,12]) = 1;
A(4,[13,14,15,16]) = 1;
A(5,[1,2,5,9]) = 1;
A(6,[3,6,10,13]) = 1;
A(7,[5,8,11,14]) = 1;
A(8,[8,12,15,16]) = 1;
A(9,[1,2,3,5]) = 1;
A(10,[4,6,7,9]) = 1;
A(11,[8,10,11,13]) = 1;
A(12,[12,14,15,16]) = 1;
A(13,[1,5,9,13]) = 1;
A(14,[2,6,10,14]) = 1;
A(15,[3,7,11,15]) = 1;
A(16,[4,8,12,16]) = 1;
%  b1 b2 b3 b4 b5 b6 b7 b8 b9 bA bB bC bD bE bF bG
b=[31;22;38;39;29;33;47;21;26;35;36;32;31;35;41;23];
[l,u]=lu(A);
y=l\b;
x=u\y;

