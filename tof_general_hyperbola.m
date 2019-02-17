function tof = tof_general_hyperbola(a, e, nu0, nu, mu)

if nargin < 5
    mu = 3.986e5;
end

sinh_F0 = (sqrt(e^2-1)*sin(nu0))/(1+e*cos(nu0));
F0 = asinh(sinh_F0);

sinh_F = (sqrt(e^2-1)*sin(nu))/(1+e*cos(nu));
F = asinh(sinh_F);

tof = sqrt(-a^3/mu)*((e*sinh_F - F)-(e*sinh_F0 - F0));