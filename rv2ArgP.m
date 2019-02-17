function omega = rv2ArgP(R, V, mu)

if length (R)~=3 || length (V)~=3
    error('Input vectors are not the correct size.')
end

if nargin < 3
    mu = 3.986e5;
end

K = [0 0 1];
H = cross(R,V);

r = norm(R);
v = norm(V);

E = (1/mu)* (((v^2- mu/r)*R) - (dot(R,V)*V));
N = cross(K, H);

omega = acos(dot(E,N)/(norm(E)*(norm(N))));
if (E(3) < 0)
    omega = 2*pi - omega;
end