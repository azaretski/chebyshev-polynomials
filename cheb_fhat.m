function y=cheb_fhat(S,S_b,pol_coeff,pol_deg)
% Evaluates function approximated with Chebyshev polynomials
% - S         : states (each row)
% - S_b       : state bounds (each row)
% - pol_coeff : vector of polynomial coefficients
% - pol_deg   : product polynomial degrees corresponding to states (each
% row)
% - y         : vector of approximated function values
%
% (c) Aliaksandr Zaretski, 2018

ns=size(S,1);
y=zeros(ns,1);
for i=1:numel(pol_coeff)
    Tprod=ones(ns,1);
    for j=1:size(S,2)
        Tprod=Tprod.*cheb_T(pol_deg(i,j),cheb_g(S(:,j),S_b(j,:)));
    end
    y=y+pol_coeff(i)*Tprod;
end

end