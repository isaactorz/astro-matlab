%Calculate the dv required to transfer to sun-sync orbit in same plane
omegadot = 1.991e-7;
j2 = 1.083e-3;
Re = 6378;
i = deg2rad(100);
mu = 3.986e5;

%calculate a s.t. the orbit is sun-sync for given i
a = (((((-3*j2*Re^2)/(2*omegadot))*cos(i))^2)*mu)^(1/7);

hohmann(6878, a)