function E = rv2ecc(R, V, mu)

if length (R)~=3 || length (V)~=3
    error('Input vectors are not the correct size.')
end

%R = [R (1); R (2); R (3)];
%SV = [V (1); V (2); V (3)];

if nargin < 3
    mu = 3.986e5;
end

r = norm (R);
v = norm (V);

E = norm((1/mu)* (((v^2- mu/r)*R) - (dot(R,V)*V)));