clear all;
close all;
m = 0.5;
y = sin(0:0.5:m*pi);
x = 0:0.5:m*pi;

disp('error for n =1 to 10 is')
for n = 1:10
    X_new = (0:0.1:2^(1/n)*m*pi)';
    Y_new = polynomial_interp(x,y,X_new,n);
    error=norm(sin(X_new)-Y_new');
    disp(error);
    subplot(2,5,n)
    hold on;
    plot(X_new,Y_new,':b')
    plot(x, y, 'r-')
    hold off;
   
end