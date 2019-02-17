function a = n2a(n, mu)

if nargin < 2
    mu = 3.986e5;
end

a = (mu^(1/3)) / (((2*n*pi)/86400)^(2/3));