function tof = tof_hyperbola(a, e, nu, mu)

if nargin < 4
    mu = 3.986e5;
end

sinh_F = (sqrt(e^2-1)*sin(nu))/(1+e*cos(nu));
F = asinh(sinh_F);

tof = sqrt(-a^3/mu)*(e*sinh_F - F);