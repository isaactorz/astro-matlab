mu = 3.986e5;

%Q1: Since perigee so either expression can be used
a = 7132;
e = 0.4;
tof1 = tof_ellipse(a, e, deg2rad(110.0)) / 60.0
tof1 = tof_general_ellipse(a,e,0.0,deg2rad(110.0),0) / 60.0

%Q2:
a = 18209;
e = 0.4;
tof2 = tof_ellipse(a, e, deg2rad(311.0)) / 60.0
tof2 = tof_general_ellipse(a,e,0.0,deg2rad(311.0),0) / 60.0

%Q3: Goes from nu_0 to nu, can use two methods
a = 19674;
e = 0.2;
nu_0 = deg2rad(66);
nu = deg2rad(323);

%method 1
tof_0 = tof_ellipse(a, e, nu_0) / 60.0;
tof = tof_ellipse(a, e, nu) / 60.0;

delta_t = tof - tof_0

%method2
tof = tof_general_ellipse(a,e,nu_0, nu,0) / 60.0

%Q4: parabolic tof of flavor "reach a radius of"
rp = 13093;
r = 36045;
p = 2*rp;
nu = acos((p/r)-1.0);
tofP = tof_parabola(rp, nu) / 60.0

%Q5: hyperbolic tof
rp = 10000;
r = 150000;
vcs = sqrt(mu/rp);
vesc = sqrt(2)*vcs;
vp = 3.0*vesc;
E = vp^2/2 - mu/rp;
h = rp*vp;
e = sqrt(1+(2*E*h^2/mu^2));
p = rp*(1+e);
nu = acos(((p/r)-1.0)/e);
a = -mu/(2*E);
tofH = tof_hyperbola(a, e, nu) / 60.0

%Q6: find difference in pos vec between 2 trajectories
%one hyperbolic and one parabolic - use coe2rv

%R parabolic
rp = 10000;
P = [1 0 0];
Q = [0 1 0];

p = 2*rp;
r = 100000;
nu = acos((p/r)-1.0);
Rp = r*cos(nu)*P + r*sin(nu)*Q

%R hyperbolic
rp = 10000;
r = 100000;
vcs = sqrt(mu/rp);
vesc = sqrt(2)*vcs;
vp = 2.0*vesc;
E = vp^2/2 - mu/rp;
h = rp*vp;
e = sqrt(1+(2*E*h^2/mu^2));
p = rp*(1+e);
nu = acos(((p/r)-1.0)/e);
Rh = r*cos(nu)*P + r*sin(nu)*Q

%Distance vector
D1 = norm(Rh - Rp)

%Q7: find difference in pos vec between 2 trajectories
%one hyperbolic and one parabolic - use coe2rv

%R parabolic
rp = 8000;
P = [1 0 0];
Q = [0 1 0];

p = 2*rp;
r = 80000;
nu = acos((p/r)-1.0);
Rp = r*cos(nu)*P + r*sin(nu)*Q

%R hyperbolic
vcs = sqrt(mu/rp);
vesc = sqrt(2)*vcs;
vp = 3.0*vesc;
E = vp^2/2 - mu/rp;
h = rp*vp;
e = sqrt(1+(2*E*h^2/mu^2));
p = rp*(1+e);
nu = acos(((p/r)-1.0)/e);
Rh = r*cos(nu)*P + r*sin(nu)*Q

%Distance vector
D2 = norm(Rh - Rp)