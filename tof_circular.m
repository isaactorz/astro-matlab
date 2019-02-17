function tof = tof_circular(r, nu, mu)

if nargin < 3
    mu = 3.986e5;
end

nu_dot = sqrt(mu/r^3);
h = r^2*nu_dot;
tof = nu*(h^3/mu^2);