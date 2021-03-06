clear all;
close all;
%Set variables
a=1; % modulator which changes k's value. as a increases the function narrows and viceversa
Topt=22.5;
Tmin=-40; Tmax=60; Tpoints=1000;
T=linspace(Tmin,Tmax,Tpoints);
k=a*17.5^-2; %k is chosen to achieve a particular width of the single-peak function

% set birthrate formula depending on T
birthrate=1-k.*(T-Topt).^2;

% create logical array for capping Birthrate, ie, if logical is true than
% Birthrate is function above, if false birthrate = 0
Tdiff=T-Topt;
birthcap=abs(Tdiff)>=k^(-0.5);

% Apply logical birthcap to birthrate to zero elements where T-Topt is less
% than k^(-0.5)
birthrate(birthcap)=0;

plot(T,birthrate);