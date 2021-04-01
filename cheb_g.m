function y=cheb_g(x,xb)
% Mapping from X---a closed interval on the real line---to [-1,1]
% - x  : vector of real numbers in X
% - xb : interval bounds
% - y  : vector of normalized real numbers in [-1,1]
%
% (c) Aliaksandr Zaretski, 2018

if xb(1)==xb(2)
    y=0;
else
    y=(2*x-xb(2)-xb(1))/(xb(2)-xb(1));
end

end