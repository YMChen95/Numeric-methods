close all;
clear all;
load light_pca

degree=6;

n=size(Y,1);
X_new=-120:5:120;
Y_new=polynomial_interp(X,Y,X_new,degree);

figure(1)
for i=1:n
    subplot(4,4,i)
    hold on
    plot(X,Y(i,:),'o')
    plot(X_new,Y_new(i,:),'.-')
    hold off
    
end

pause();


Y_new=linear_interp(X,Y,X_new);
figure(2)
for i=1:n
    subplot(4,4,i)
    hold on
    plot(X,Y(i,:),'o')
    plot(X_new,Y_new(i,:),'.-')
    hold off
    
end

pause();

load obj_pca

degree=10;

n=size(Y,1);
X_new=0:1:355;
Y_new=polynomial_interp(X,Y,X_new,degree);

figure(3)
for i=1:n
    subplot(9,9,i)
    hold on
    plot(X,Y(i,:),'o')
    plot(X_new,Y_new(i,:),'.-')
    hold off
    
end

pause();


Y_new=linear_interp(X,Y,X_new);
figure(4)
for i=1:n
    subplot(9,9,i)
    hold on
    plot(X,Y(i,:),'o')
    plot(X_new,Y_new(i,:),'.-')
    hold off
    
end

pause();
close all;

