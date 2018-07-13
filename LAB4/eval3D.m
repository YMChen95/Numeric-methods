clear all
close all
addpath /cshome/vis/data
robot3D('new')
load('human_data.mat')
load('jump1.mat')

Lp = [-pi/8;0;-pi/16;pi/4];
Rp = [-pi/8;0;pi/16;pi/4];

for i=1:size(L,2)
   Lp = invKin3D(Ml,Lp,L(:,i));
   Rp = invKin3D(Mr,Rp,R(:,i));
   theta=[Lp;Rp];
   robot3D(humanInterp(drad,theta))
   pause(0.02);
end