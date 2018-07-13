clear all;
close all;

file=load('sincos_basis.mat');
Y=file.Y;
B=file.B;
imsize=file.imsize;
newB(:,1) = sin(2*asin(B(:,1)));
newB(:,2) = cos(2*acos(B(:,2)));
newY(1,:) = cos(2*acos(Y(1,:)));
newY(2,:) = sin(2*asin(Y(2,:)));
for i = 1:64
    
    subplot(1,3,1);
    Ii = renderim(Y(:,i),B,imsize); 
    imshow(Ii,[]); 
    
    subplot(1,3,2);
    Ii = renderim(Y(:,i),newB,imsize);%change a
    imshow(Ii,[]); 
    
    subplot(1,3,3);
    Ii = renderim(newY(:,i),B,imsize);%change b
    imshow(Ii,[]); 
    drawnow;
    pause(0.1);
end
close;