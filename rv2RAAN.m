function raan = rv2RAAN(R, V)

if length (R)~=3 || length (V)~=3
    error('Input vectors are not the correct size.')
end

I = [1 0 0];
K = [0 0 1];
H = cross(R,V);
N = cross(K, H);

%TODO dont have to dot I & N
raan = (acos(dot(I,N)/norm(N)));
if (N(2) < 0)
    raan = 2*pi - raan;
end