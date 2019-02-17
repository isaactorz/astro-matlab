a = 7000;
e = 0.2
%pop quiz 1
tof = tof_ellipse(a, e, pi/2) / 60.0

%pop quiz 2 - tests quadrant check
tof = tof_ellipse(a, e, 3*pi/2) / 60.0

%pop quiz 3 - delta nu instead of perigee passage
%so use t-to = (t-T)-(to-T)
nu_0 = pi/3;
nu = 3*pi/2;
tof_0 = tof_ellipse(a, e, nu_0) / 60.0;
tof = tof_ellipse(a, e, nu) / 60.0;

delta_t = tof - tof_0