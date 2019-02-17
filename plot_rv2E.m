%This code has been slightly modified from the driver code
%for rv2E.m provided by Dr. Hall in a lecture video.

mu = 3.986e5;
Npoints = 100;

R = [7000; 0; 0]; %R is in I direction
Vrange = linspace(1,15,Npoints);
Erange = zeros(1,Npoints);

for i=1:Npoints
    V = [0; Vrange(i); 0]; %Assumes phi is 0
    Erange(i) = rv2E(R,V,mu);
end

figure
hg=plot(Vrange, Erange);
set(hg,'linewidth',2)
xlabel('Velocity (km/s)','fontsize',12)
ylabel('Energy (km^2/s^2)','fontsize',12)
str={'Energy = 0; Parabola', 'Energy > 0; Hyperbola'...
    'Energy < 0; Ellipse'};
text(5, 20, str)