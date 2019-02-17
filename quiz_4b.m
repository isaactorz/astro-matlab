mu = 3.986e5;

%Q1: Given R, V find E
r = [0 7200 0];
v = [-7.4405 1.4881 0];

%find nu and e
nu = rv2NU(r,v);
e = rv2ecc(r,v);

%calc E
E1 = acos((e+cos(nu))/(1+e*cos(nu)));

%quadrant check
if (nu > pi)
    E1 = 2*pi - E1;
end

E1

%Q2: Given R, V find E
r = [0 -7200 0];
v = [7.4405 1.4881 0];

%find nu and e
nu = rv2NU(r,v);
e = rv2ecc(r,v);

%calc E
E2 = acos((e+cos(nu))/(1+e*cos(nu)));

%quadrant check
if (nu > pi)
    E2 = 2*pi - E2;
end

E2

%Q3: Given R, V find Mean Anomaly
r = [0 7200 0];
v = [-7.4405 1.4881 0];

%find nu and e
nu = rv2NU(r,v);
e = rv2ecc(r,v);

%calc E
E3 = acos((e+cos(nu))/(1+e*cos(nu)));

%quadrant check
if (nu > pi)
    E3 = 2*pi - E3;
end

M = E3 - e*sin(E3)

%Q4: Given R, V at epoch find TOF since perigee passage at epoch
%find TP -> find a
r = [0 7200 0];
v = [-7.4405 1.4881 0];

a = rvmag2a(norm(r), norm(v));
nu = rv2NU(r,v);
e = rv2ecc(r,v);
tof4 = tof_ellipse(a, e, nu) / 60.0

%Q5: Find D for parabolic tof, uncomment D in tof_parabola
%Q6: Find TOF for this problem
rp = 7500;
nu = pi/2;
tof = tof_parabola(rp, nu) / 60.0

%Q7: Find F for hyperbolic tof
%pop quiz 2, hyperbolic TOF:
rp = 7500;
r = 100000;
vcs = sqrt(mu/rp);
vesc = sqrt(2)*vcs;
vp = 2.0*vesc;
E = vp^2/2 - mu/rp;
h = rp*vp;
e = sqrt(1+(2*E*h^2/mu^2));
p = rp*(1+e);
nu = pi/2;
a = -mu/(2*E);
tof = tof_hyperbola(a, e, nu) / 60.0