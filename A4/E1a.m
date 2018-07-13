close all;
clear all;

disp('1');

r=1.9;
p0=0.1;

for i=1:50
    
    d=Jk(p0,r)\(-Fk(p0,r));
    r=r+d(1)
    p0=p0+d(2)
    if norm(Fk(p0,r))<0.0001
        disp('ok');
    end
    
end

disp(norm(Fk(p0,r)));