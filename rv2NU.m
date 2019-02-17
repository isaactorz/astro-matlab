function nu = rv2NU(R, V, mu)

if length (R)~=3 || length (V)~=3
    error('Input vectors are not the correct size.')
end

if nargin < 3
    mu = 3.986e5;
end

r = norm(R);
v = norm(V);
phi = dot(R,V);

E = (1/mu)* (((v^2- mu/r)*R) - (dot(R,V)*V));

nu = acos(dot(R,E)/(norm(R)*(norm(E))));
if (phi < 0)
    nu = 2*pi - nu;
end