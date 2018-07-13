function y = PCA(y)
I_mean = mean(y,2);

M = y - I_mean*ones(1,size(y,2));
c = M*M'/(size(y,2)-1);

[vectors,values] = eig(c); % Get eigenvalues

length1=2*sqrt(values(1,1))*vectors(1,1);
length2=2*sqrt(values(1,1))*vectors(2,1);
length3=2*sqrt(values(2,2))*vectors(1,2);
length4=2*sqrt(values(2,2))*vectors(2,2);
hold on

plot([I_mean(1) length1+I_mean(1)],[I_mean(2) length2+I_mean(2)],'g')
plot([I_mean(1) length3+I_mean(1)],[I_mean(2) length4+I_mean(2)],'r')
axis equal
hold off