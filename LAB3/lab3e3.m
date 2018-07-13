close all;
clear all;

file=load('immotion_basis');
Y=file.Y;
B=file.B;
imsize=file.imsize;

for i=1:13
    Ii = renderim(Y(:,i),B,imsize); 
    imshow(Ii,[]);
    drawnow; 
    pause(0.1);
end

G=imread('index.jpeg');
GI=double(rgb2gray(G));
[GIx,GIy]=gradient(GI);
B1=[GI(:)  GIx(:) GIy(:)];


for i=1:13
    Ii = renderim(Y(:,i),B1,size(GI)); 
    imshow(Ii,[]);
    drawnow; 
    pause(0.1);
end

pause();

interval=5:10;
largeY=[ones(1,19);0 interval zeros(1,6) interval;0 zeros(1,6) interval interval];

for i=1:13
    Ii = renderim(largeY(:,i),B1,size(GI)); 
    imshow(Ii,[]);
    drawnow; 
    pause(0.1);
end
close