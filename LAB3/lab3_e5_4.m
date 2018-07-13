clear all;
close all;

load light_pca

degree = 7; 
xsize=size(X,2);
X_new = linspace(X(1),X(xsize),xsize*4);
Y_new=polynomial_interp(X,Y,X_new,degree);
n=size(Y_new,2);
for i = 1:n
  Ic = renderim(Y_new(:,i),B,imsize);
  imshow(Ic)
  drawnow
end
pause();


Y_new=linear_interp(X,Y,X_new);
n=size(Y_new,2);
for i = 1:n
  Ic = renderim(Y_new(:,i),B,imsize);
  imshow(Ic)
  drawnow
end
pause();

close all;
load obj_pca

degree = 10; 
xsize=size(X,2);
X_new = linspace(X(1),X(xsize),xsize*4);
Y_new=polynomial_interp(X,Y,X_new,degree);
n=size(Y_new,2);
for i = 1:n
  Ic = renderim(Y_new(:,i),B,imsize);
  imshow(Ic)
  drawnow
end
pause();


Y_new=linear_interp(X,Y,X_new);
n=size(Y_new,2);
for i = 1:n
  Ic = renderim(Y_new(:,i),B,imsize);
  imshow(Ic)
  drawnow
end
pause();

close all;
