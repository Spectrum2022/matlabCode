clear all
close all


C = load('/home/ben/workspace/programming/school/final/traffic.dat');
% load('Lax.mat');
% load('LaxW.mat');
% A = Lax;
% 
% t = A(:,1);
% p = A(:,2:end);
% p2 = B(:,2:end);
L = 1000;
t3 = C(:,1);
p3 = C(:,2:end);

x = linspace(0,L,length(p3(1,:)));
% 
% [X,T] = meshgrid(x,t);
% 
% figure(1)
% meshc(X,T,p);
%     xlabel('Track Distance')
%     ylabel('Time [seconds]')
%     zlabel('Density')
%     title('Lax Method')
% figure(2)
% mesh(X,T,p2);
%     xlabel('Track Distance')
%     ylabel('Time [seconds]')
%     zlabel('Density')
%     title('Lax Wendoff Method')
% % average car is 4.12 metres
% % Bumper to Bumper is when a metre exists between each car.
% % For a total length of 5.12 metres.
% % So for a given delta_x (in km's) the max density should be
% % delta_x / 5.12 = # of cars bumper to bumper.
% 
% V = 1;
% 
% 
% T = [0,250.2,500.2,750.2];
% 
% p0 = 4;
% for ii = 1:length(t)
%     pI(ii,:) = 0.5*p0*(sin(-V*4*pi/L*t(ii) + 4*pi*x/L) + 1);
% end
% 
% for ii = 1:length(T)
%     figure(3)
%     subplot(2,2,ii)
%     plot(x,pI(t==T(ii),:),'v',x,p(t==T(ii),:),'+')
%     title(sprintf('Density along track for T = %2.2f s',T(ii)))
%     legend('Analytic Values','Computed Values','Location','Best')
%     ylim([0,4])
%     figure(4)
%     subplot(2,2,ii)
%     plot(x,pI(t==T(ii),:),'v',x,p2(t==T(ii),:),'+')
%     title(sprintf('Density along track for T = %2.2f s',T(ii)))
%     legend('Analytic Values','Computed Values','Location','Best')
%     ylim([0,4])
% end
% 
% 
% E1 = abs(pI - p)/p0;
% E2 = abs(pI - p2)/p0;
% 
% figure(5)
% contourf(x,t,E1); colorbar;
% title('Lax Error Plot: Analytic - Computed Density')
% xlabel('Track Distance [m]')
% ylabel('Time [s]')
% figure(6)
% contourf(x,t,E2); colorbar;
% title('Lax Wendoff Error Plot: Analytic - Computed Density')
% xlabel('Track Distance [m]')
% ylabel('Time [s]')

figure(7)
mesh(x,t3,p3); 
title('Lax Wendoff General Method')
xlabel('Track Distance [m]')
ylabel('Time [s]')
zlabel('Density')