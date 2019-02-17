function R = coe2r(COE)

if length (COE)~=6
    error('Input vector is not the correct size (6).')
end

a = COE(1)
e = COE(2)
nu = COE(6);

P = [1 0 0];
Q = [0 1 0];

p = a*(1-e^2)
r = p/(1+(e*cos(nu)))
R = r*cos(nu)*P + r*sin(nu)*Q;