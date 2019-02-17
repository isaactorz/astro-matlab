function V = coe2v(COE, mu)

if length (COE)~=6
    error('Input vector is not the correct size (6).')
end

if nargin < 2
    mu = 3.986e5;
end

a = COE(1);
e = COE(2);
nu = COE(6);

P = [1 0 0];
Q = [0 1 0];

p = a*(1-e^2);
V = sqrt(mu/p)*(-sin(nu)*P + (e+cos(nu))*Q);