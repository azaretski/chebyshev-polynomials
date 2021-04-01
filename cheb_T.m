function y=cheb_T(n,x)
% Evaluates Chebyshev polynomial of first kind
% - n : degree
% - x : vector of real numbers in [-1,1]
% - y : vector of Chebyshev polynomials
%
% (c) Aliaksandr Zaretski, 2018

if n==0
    y=ones(numel(x),1);
elseif n==1
    y=x;
else
    y=2*x.*cheb_T(n-1,x)-cheb_T(n-2,x);
end

end