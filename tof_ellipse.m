function tof = tof_ellipse(a, e, nu, mu)

if nargin < 4
    mu = 3.986e5;
end

n = sqrt(mu/a^3);
E = acos((e+cos(nu))/(1+e*cos(nu)));
%quadrant check
if (nu > pi)
    E = 2*pi - E;
end

tof = 1/n * (E-e*sin(E));