%coe = [7000 .2 pi/5 pi/7 pi/3 pi/6];
%coe2r(coe)
%velPQW = coe2v(COE)

%posECI = rotPQW2ECI(posPQW.', COE)
%velECI = rotPQW2ECI(velPQW.', COE)
format long;
hohmann(6000, 4000, 4.305e4)