%This code has been slightly modified from the driver code
%for rv2E.m provided by Dr. Hall in a lecture video.

mu = 1.0;
Npoints = 100;

R = [1; 0; 0]; %R is in I direction
Rrange = linspace(1, 4, Npoints);
Vrange = linspace(0,2,Npoints);
Erange = zeros(length(Rrange),length(Vrange));

for j = 1:length(Rrange)
for k = 1:length(Vrange)
    Erange(j,k) = Vrange(k)^2/2 - mu/Rrange(j);
end
end
%,[-1:0.25:4]
% Plot energy contours
[X,V] = meshgrid(Rrange,Vrange);
[C1,handle1] = contour(X,V,Erange,[-1:0.25:4],'k-'); hold on
set(handle1,'ShowText','on')
xlabel('Radius, x (DU)','FontSize',16)
ylabel('Velocity, v (DU/TU)','FontSize',16)
title('Contours of Specific Mechanical Energy','FontSize',16)
set(gca,'FontSize',16,'LineWidth',2)