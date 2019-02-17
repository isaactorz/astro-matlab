function tof = tof_general_ellipse(a, e, nu_0, nu, k, mu)

if nargin < 6
    mu = 3.986e5;
end

n = sqrt(mu/a^3);
E0 = acos((e+cos(nu_0))/(1+e*cos(nu_0)));
E = acos((e+cos(nu))/(1+e*cos(nu)));

%quadrant check
if (nu_0 > pi)
    E0 = 2*pi - E0;
end

if (nu > pi)
    E = 2*pi - E;
end

tof = 1/n * (2*k*pi + (E-e*sin(E)) - (E0-e*sin(E0)));