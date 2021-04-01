function y=cheb_TH(S,S_b,pol_deg)
% Creates a matrix of Chebyshev polynomials evaluated at specific points
% - S       : states (each row)
% - S_b     : state bounds (each row)
% - pol_deg : product polynomial degrees corresponding to states (each row)
% - y       : matrix of Chebyshev polynomials
%
% (c) Aliaksandr Zaretski, 2018

n_pol=size(pol_deg,1);
y=ones(size(S,1),n_pol);
for j=1:n_pol
    for k=1:size(S,2)
        y(:,j)=y(:,j).*cheb_T(pol_deg(j,k),cheb_g(S(:,k),S_b(k,:)));
    end
end

end