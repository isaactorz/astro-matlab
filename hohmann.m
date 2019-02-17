function [dv1,dv2,dt] = hohmann(r1, r2, mu)

if nargin < 3
    mu = 3.986e5;
end

vc1 = sqrt(mu/r1);
vc2 = sqrt(mu/r2);
at = (r1+r2)/2;
Et = -mu/2/at;
v1 = sqrt(2*(Et+mu/r1));
v2 = sqrt(2*(Et+mu/r2));
dv1 = v1-vc1
dv2 = vc2-v2
dt = pi*sqrt(at^3/mu)