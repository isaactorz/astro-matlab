close all
clear all
%--------------------------------------------------------------------------
% This script uses the meshgrid and contour functions to
% create a contour plot of the mechanical energy for a mass-spring
% system
% Define parameters
m = 1;   %mass
k = 1;   %spring constant
% Define ranges of x and xdot (v)
x = linspace(-2,2,200)';
v = linspace(-2,2,200)';
% Calculate energy
E = zeros(length(x),length(v));
for j = 1:length(x)
for k = 1:length(v)
E(j,k) = x(j)^2/2 + v(k)^2/2;
end
end
% Plot energy contours
[X,V] = meshgrid(x,v);
[C1,handle1] = contour(X,V,E,[0:0.25:4],'k-'); hold on
set(handle1,'ShowText','on')
xlabel('Spring Deformation, x (m)','FontSize',16)
ylabel('Mass Velocity, v (m/s)','FontSize',16)
title('Contours of Constant Mechanical Energy','FontSize',16)
set(gca,'FontSize',16,'LineWidth',2)