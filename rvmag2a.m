function a = rvmag2a(r, v, mu)

if nargin < 3
    mu = 3.986e5;
end

e = v^2/2 - mu/r;
a = -mu/(2*e);