# chebyshev-polynomials
Global approximation of functions using a Chebyshev polynomial basis
- `cheb_g` is a mapping from a closed interval to [-1,1];
- `cheb_h` is an inverse mapping from [-1,1] to a closed interval;
- `cheb_T` evaluates Chebyshev polynomials of first kind using a recursive definition;
- `cheb_TH` takes an n-by-d matrix of states and k-by-d matrix of product polynomial degrees to create an n-by-k matrix of corresponding Chebyshev polynomials, where d is the state-space dimension, n is the number of state vectors, and k is the number of Chebyshev polynomials. The produced matrix, together with an n-by-1 vector of function values at each state vector---obtained with `cheb_fhat`---can be used to update the polynomial coefficients;
- `cheb_fhat` approximates function values at specific states using Chebyshev polynomials, given a vector of coefficients.
