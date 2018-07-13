clear all;
load light_pca
h = 5;
B_new = zeros(size(B,1),size(B,2));
Y_new = zeros(size(Y,1),size(Y,2));
B_new(:,1:h) = B(:,1:h);
Y_new(:,1:h) = Y(:,1:h);
for c = 1:h
  Ic = renderim(Y_new(:,c),B_new,imsize);
  imshow(Ic)
  drawnow
end
pause

load obj_pca
h = 15;
B_new = zeros(size(B,1),size(B,2));
Y_new = zeros(size(Y,1),size(Y,2));
B_new(:,1:h) = B(:,1:h);
Y_new(:,1:h) = Y(:,1:h);
for c = 1:h
  Ic = renderim(Y_new(:,c),B_new,imsize);
  imshow(Ic)
  drawnow
end

close all;


