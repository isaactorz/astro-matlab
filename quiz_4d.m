%quiz 4d - given tof find nu
mu = 3.986e5;
a = 15000;
tof = 200 * 60;
M = sqrt(mu/a^3)*tof;
e = 0.4;
E = keplersolve(M, e);
nu = acos((e-cos(E))/(e*cos(E)-1));
rad2deg(nu)

%Q2:
mu = 3.986e5;
a = 15000;
tof = 200 * 60;
M = sqrt(mu/a^3)*tof;
e = 0.4;
E = keplersolve(M, e);
nu = acos((e-cos(E))/(e*cos(E)-1));
r = a*(1-e*cos(E))