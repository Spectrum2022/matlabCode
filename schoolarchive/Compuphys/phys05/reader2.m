
close all 
clear all,

[t1,x1,v1] = textread('forced_damped_A=1.665.txt', ' %f %f %f');
[t2,x2,v2] = textread('forced_damped_A=1.44.txt', ' %f %f %f');
[t3,x3,v3] = textread('forced_damped_A=0.5.txt', ' %f %f %f');
[t4,x4,v4] = textread('forced_damped_A=1.2.txt', ' %f %f %f');
[t5,x5,v5] = textread('forced_damped_A=1.5.txt', ' %f %f %f');

% for ii = 1:37500
%     p(ii) = mod(t(ii),2*pi);
% end


%%





for ii = 1:4
figure(1)
subplot(4,1,ii)
hold on
len = [1,10000,20000,30000,length(t3)];
plot(t3(len(ii):len(ii+1)),x3(len(ii):len(ii+1)),'*r')
figure(2)
subplot(4,1,ii)
len = [1,10000,20000,30000,length(t4)];
plot(x4(len(ii):len(ii+1)),v4(len(ii):len(ii+1)),'.')
end

figure(1)
axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0
    1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
    text(0.5, 1,'\bf \theta over time for A= 0.5','HorizontalAlignment',... 
    'center','VerticalAlignment', 'top')
figure(2)
axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0
    1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
    text(0.5, 1,'\bf Phase Space for for A= 1.2','HorizontalAlignment',... 
    'center','VerticalAlignment', 'top')

close 1

figure(1)
plot(x3,v3,'.')
title('Phase Space for A = 0.5')
xlabel('Theta [Rad]')
ylabel('Velocity [rad/s]')


figure(3)
hold on
plot(t1,x1,'b',t2,x2,'k',t5,x5,'r')
title('Theta against Time')
xlabel('Time (s)')
ylabel('Theta (radians)')
legend('1.665','1.44','1.5')
hold off

%%

[t11,x11,v11] = textread('Poincare_sect_A=1.665.txt', ' %f %f %f');
[t22,x22,v22] = textread('Poincare_sect_A=1.44.txt', ' %f %f %f');
[t33,x33,v33] = textread('Poincare_sect_A=1.5.txt', ' %f %f %f');
figure(4)
hold on
subplot(2,2,1)
plot(x11,v11,'b.')
title('Velocity vs Theta for A = 1.67')
xlabel('Theta (radians)')
ylabel('Velocity (radians/s)')
subplot(2,2,3:4)
plot(x22,v22,'k.')
title('Velocity against Theta for A=1.44')
xlabel('Theta (radians)')
ylabel('Velocity (radians/s)')
subplot(2,2,2)
plot(x33,v33,'r.')
title('Velocity against Theta for A = 1.495')
xlabel('Theta (radians)')
ylabel('Velocity (radians/s)')
hold off
% xlim([-0.005 0.23])
% ylim([-0.02 0.001])
