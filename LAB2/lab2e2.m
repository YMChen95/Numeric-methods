close all;
clear all;

I = imread('tumorContour.jpg');
II = imread('tumor.jpg');

[xa, ya]= find(I > 250);
imshow(II);

[x,y]= ginput
hold on;

pp=spline(x,y);
v=ppval(pp,x);
plot(x,y,'ro')
plot([x;x(1)],[v; v(1)],'b-');

[C,IA,IC]=unique(ya,'stable');

yy=spline(C,xa(IA));
yyu=ppval(yy,x);
%just use norm
%error1=norm(abs(ppval(yy,x)-y));

diff= abs(yyu-y);
error2=sum(diff)/length(yyu);

%disp(error1);
disp(error2);
hold off