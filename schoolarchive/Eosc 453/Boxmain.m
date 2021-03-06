%Main Program
global K
F=zeros(9,9); K=zeros(9,9); 
tmin=0; tmax=1000; npoints=10000;
dt=linspace(tmin,tmax,npoints);
dt=dt';
mass_0=[725;725;3;37675;110;450;60;1350;1];
F(2,1)=90; F(5,1)=55; F(6,1)=0; F(9,1)=1; F(8,1)=3;
F(9,9)=0; F(1,2)=89; F(1,5)=110; F(7,1)=50;
F(4,2)=42; F(7,2)=1; F(2,4)=38; F(2,3)=40; F(3,2)=36;
F(3,4)=4; F(5,6)=15; F(5,7)=40;
F(6,7)=15; F(7,8)=3; F(7,9)=1;

for jj = 1:9
    for kk = 1:9
      K(jj,kk)=F(jj,kk)/mass_0(jj); 
    end
end



[T,M] = ode45(@boxdiff,dt,mass_0);

plot(T,M);