clear all;
load light_pca

Y_omit = Y(:,[1:2, 4:5, 6:8, 10:11,13]);
X_omit = X(:,[1:2, 4:5, 6:8, 10:11,13]);
X_new = X;
Y_new = linear_interp(X_omit,Y_omit,X_new);

diff=norm(Y(:,[3,6,9,12])-Y_new(:,[3,6,9,12]));
disp('The norm difference is');
disp(diff);
i = 1;
for c = 3:3:12
    subplot(4,2,i)
    i = i + 1;
	Ic = renderim(Y(:,c),B,imsize);
	imshow(Ic)
	drawnow

 	subplot(4,2,i)
    i = i + 1;
	Ic = renderim(Y_new(:,c),B,imsize);
    imshow(Ic)
    drawnow

end

i = 1;
figure(2)
for c = 3:3:12
    subplot(4,2,i)
    i = i + 1;
    plot(Y(:,c))

 	subplot(4,2,i)
    i = i + 1;
	plot(Y_new(:,c))

end