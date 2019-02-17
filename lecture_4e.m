mu = 3.986e5;
a = 10000;
tof = 80.25 * 60;
M = sqrt(mu/a^3)*tof
e = 0.5;
E = keplersolve(M, e)
nu = acos((e-cos(E))/(e*cos(E)-1))
rad2deg(nu)
r = a*(1-e*cos(E))
