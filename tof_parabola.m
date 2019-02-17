function tof = tof_parabola(rp, nu, mu)

if nargin < 4
    mu = 3.986e5;
end

p = 2*rp; %since for parabola e = 1
D = sqrt(p)*tan(nu/2);

tof = (1/(2*sqrt(mu)))*(p*D+D^3/3);