function I = rv2I(R, V)

if length (R)~=3 || length (V)~=3
    error('Input vectors are not the correct size.')
end

H = cross(R,V);
K = [0 0 1];
I = min(acos(dot(K,H)/norm(H)));