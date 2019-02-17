mu = 3.986e5;
re = 6378;

%Q2
tof = tof_circular(7792, deg2rad(21)) / 60.0

%Q3
n = sqrt(3.986e5/(457+re)^3)

%Q4
% Solve for Vcs then -Vcs is 1/2 TP
a = 6878;
vcs = sqrt(mu/a);
tof_4 = pi*sqrt(a^3/mu)

%Q5
%solve for the period then exam quadrant at particular tof
tp = 2*pi*sqrt(a^3/mu) / 60.0