mu = 3.986e5;

%pop quiz 1:
rp = 7000;
r = 100000;
p = 2*rp;
nu = acos((p/r)-1.0);
tof = tof_parabola(rp, nu) / 60.0

%pop quiz 2, hyperbolic TOF:
rp = 7000;
r = 100000;
vcs = sqrt(mu/rp);
vesc = sqrt(2)*vcs;
vp = 2.0*vesc;
E = vp^2/2 - mu/rp;
h = rp*vp;
e = sqrt(1+(2*E*h^2/mu^2));
p = rp*(1+e);
nu = acos(((p/r)-1.0)/e);
a = -mu/(2*E);
tof = tof_hyperbola(a, e, nu) / 60.0