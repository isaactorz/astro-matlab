format;
rp = 8000;
tof = 88 * 60;
mu = 3.986e5;
p = 2*rp;
D = keplersolve_p(p,tof,mu)
nu = 2*atan(D/sqrt(p));
rad2deg(nu)
r = p/(1+cos(nu))

E = keplersolve(