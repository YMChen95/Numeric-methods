close all;
clear all;

xk=-0.1;
r=[xk];
for i=1:20
%   xk=xk-((200000/3)*1.06^xk-500000/3)/(200000*log(1.06)*1.06^xk/3);
    xk=xk-((100000*xk-10000)*(1+xk)^20+10000)/(100000*(1+xk)^20+20*(100000*xk-10000)*(1+xk)^19);

  r=[r xk];
end