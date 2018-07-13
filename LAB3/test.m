clear all;
load light_pca
% Omit 2,5,12
Y_omit = Y(:,[1, 3:4, 6:8, 13]);
X_omit = X(:,[1, 3:4, 6:8, 13]);
X_new = X;
for i = 1:size(Y_omit,1)
    y_new(i,:) = linear_interp(X_omit,Y_omit(i,:),X_new);
end

% Show images
i = 1;
for c = [2 5 9 10 11 12]
    subplot(6,2,i)
    i = i + 1;
	Ic = renderim(Y(:,c),B,imsize);
	imshow(Ic)
	drawnow
    str = sprintf('Original %d',c);
    title(str);
 	subplot(6,2,i)
    i = i + 1;
	Ic = renderim(y_new(:,c),B,imsize);
    imshow(Ic)
    drawnow
    str = sprintf('Interpolated %d',c);
    title(str);
end

% Show plots
i = 1;
figure(2)
for c = [2 5 12]
    subplot(3,2,i)
    i = i + 1;
    plot(Y(:,c))
    str = sprintf('Original %d',c);
    title(str);
 	subplot(3,2,i)
    i = i + 1;
	plot(y_new(:,c))
    str = sprintf('Interpolated %d',c);
    title(str);
end