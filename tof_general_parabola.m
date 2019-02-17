function tof = tof_general_parabola(rp, nu0, nu, mu)

if nargin < 4
    mu = 3.986e5;
end

p = 2*rp; %since for parabola e = 1
D0 = sqrt(p)*tan(nu0/2);
D = sqrt(p)*tan(nu/2);

tof = (1/(2*sqrt(mu)))*((p*D+D^3/3)-(p*D0+D0^3/3));