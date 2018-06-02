# MATLABproject
approximate a user-defined polynomial using QR factorization and Vandemonde system


Write a MatLab function that computes a polynomial approximation to a user-defined function. Your
function should be invoked as:
function [c,flag] = approx(f,a,b,n,m)
Page 2 of 3 pages.
where
• f is the user-defined function to be approximated (see MatLab’s feval for an explanation of
how to pass function names as parameters),
• [a,b] is the interval on which f is to be approximated,
• n is the degree of the approximating polynomial,
• m+1 is the number of interpolation conditions to be used in setting up the overdetermined linear
system (see below),
• c is a vector containing the n+1 coefficients of the approximating polynomial, and
• flag indicates whether the approximating polynomial is unique—flag = 0 ⇒ the polynomial
is unique; flag 6= 0 ⇒ the polynomial is not unique and the vector c is not computed (see
below).
The objective of your function is to find the coefficients ck of an n-th degree polynomial
p(x) such that p(x) ≈ f(x) on the interval [a, b]. 
