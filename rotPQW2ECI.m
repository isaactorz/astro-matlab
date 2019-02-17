function ECI = rotPQW2ECI(pqw, coe)

i = coe(3);
raan = coe(4);
omega = coe(5);

A = [cos(raan)*cos(omega)-sin(raan)*sin(omega)*cos(i)...
     -cos(raan)*sin(omega)-sin(raan)*cos(omega)*cos(i)...
     sin(raan)*sin(i);
     sin(raan)*cos(omega)+cos(raan)*sin(omega)*cos(i)...
     -sin(raan)*sin(omega)+cos(raan)*cos(omega)*cos(i)...
     -cos(raan)*sin(i);
     sin(omega)*sin(i) cos(omega)*sin(i) cos(i)];

ECI = A * pqw;