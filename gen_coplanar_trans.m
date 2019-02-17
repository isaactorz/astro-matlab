function [dv1,dv2] = gen_coplanar_trans(r1, r2, p, e, mu)

if nargin < 5
    mu = 3.986e5;
end

vc1 = sqrt(mu/r1)
vc2 = sqrt(mu/r2)
Et = -mu*(1-e^2)/(2*p)
ht = sqrt(mu*p)
v1 = sqrt(2*(Et+mu/r1))
v2 = sqrt(2*(Et+mu/r2))
dv1 = sqrt((v1^2)+(vc1^2)-(2*vc1*(ht/r1)))
dv2 = sqrt(v2^2+vc2^2-(2*vc2*(ht/r2)))