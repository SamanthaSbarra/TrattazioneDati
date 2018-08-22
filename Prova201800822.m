clear all
clc
format long
%%cambiamento dcjhg ma che devio afiffhdfh non capisco una fava
addpath C:\Users\will\Desktop\Misure\Misure-20180725
data=importdata('C:\Users\will\Desktop\Misure\Misure-20180725\Allan-20180725-15mW-150mVpk-OpenLoop.DAT',',');
time=data(:,1);
Allan1=data(:,2);
Allan2=data(:,3);
Allan3=data(:,4);

figure(1)
for m=1:3
    loglog(time, Allan3,time, Allan2,time, Allan1,'o')
end    
xlabel('time (sec)');
ylabel('\sigma_{Allan}(\tau)')
set(gca,'fontsize',16)
title('20180725-15mW-15mVpk-OpenLoop','fontsize',12)
legend('RBM1','RBM2','RBM3');
savefig('C:\Users\will\Desktop\Misure\Misure-20180725\20180725-15mW-150mVpk-OpenLoop.fig')