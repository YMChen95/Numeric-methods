clear all;
close all;

file = load('EllipsePoints.mat');
y1 = file.Y1;
plot(y1(1,:),y1(2,:),'.');
PCA(file.Y1);
pause;

y2 = file.Y2;
plot(y2(1,:),y2(2,:),'.');
PCA(file.Y2);
pause;

y3 = file.Y3;
plot(y3(1,:),y3(2,:),'.');

PCA(file.Y3);
pause;
close;