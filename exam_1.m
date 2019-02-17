r = [0 -4 0];
v = [0 0 1/sqrt(2)];

a = rvmag2a(norm(r), norm(v), 1)
e = rv2ecc(r, v, 1)
i = rad2deg(rv2I(r, v))
raan = rad2deg(rv2RAAN(r, v))
omega = rad2deg(rv2ArgP(r, v, 1))
nu = rad2deg(rv2NU(r, v, 1))
