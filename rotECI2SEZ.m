function SEZ = rotECI2SEZ(ECI, gl, theta)

A = [sin(gl)*cos(theta) sin(gl)*sin(theta) -cos(gl);
     -sin(theta) cos(theta) 0 ;
     cos(gl)*cos(theta) cos(gl)*sin(theta) sin(gl)];

SEZ = A * ECI;