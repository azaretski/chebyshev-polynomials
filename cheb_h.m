function x=cheb_h(y,xb)
% Mapping from [-1,1] to a closed interval on the real line X
% - y  : vector of real numbers in [-1,1]
% - xb : interval bounds
% - x  : vector of real numbers in X
%
% (c) Aliaksandr Zaretski, 2018

x=(xb(1)+xb(2))/2+(xb(2)-xb(1))/2*y;

end