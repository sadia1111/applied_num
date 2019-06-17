# applied_num
some functions of applied numerical methods 

Root Finding
In mathematics and computing, a root-finding algorithm is an algorithm for finding roots of continuous functions.

Bisection method
The simplest root-finding algorithm is the bisection method. Let f be a continuous function, for which one knows an interval [a, b] such that f(a) and f(b)
have opposite signs (a bracket). Let c = (a +b)/2 be the middle of the interval (the midpoint or the point that bisects the interval). Then either f(a) and f(c), 
or f(c) and f(b) have opposite signs, and one has divided by two the size of the interval.


Fixed-point iteration
In numerical analysis, fixed-point iteration is a method of computing fixed points of iterated functions.

Newton's method
Newton's method assumes the function f to have a continuous derivative. Newton's method may not converge if started too far away from a root. 
However, when it does converge, it is faster than the bisection method, and is usually quadratic.

Secant method
Replacing the derivative in Newton's method with a finite difference, we get the secant method. This method does not require the computation 
(nor the existence) of a derivative, but the price is slower convergence (the order is approximately 1.6)


Numerical linear algebra

Gaussian quadrature
In numerical analysis, a quadrature rule is an approximation of the definite integral of a function,
usually stated as a weighted sum of function values at specified points within the domain of integration

Jacobi method
In numerical linear algebra, the Jacobi method is an iterative algorithm for determining the solutions of a diagonally dominant system of linear equations. Each diagonal element is solved for, 
and an approximate value is plugged in. The process is then iterated until it converges.

Divided differences
In mathematics, divided differences is an algorithm, historically used for computing tables of logarithms and trigonometric functions.

Horner's method
In mathematics, the term Horner's rule (or Horner's method, Horner's scheme etc) refers to a polynomial evaluation method named after William George Horner

Simpson's rule
In numerical analysis, Simpson's rule is a method for numerical integration, the numerical approximation of definite integrals. Specifically, it is the following 
approximation for  n+1 equally spaced subdivisions (where n is even)

Composite Simpson's rule
If the interval of integration [a,b] is in some sense "small", then Simpson's rule with n=2 subintervals will provide an adequate approximation to the exact 
integral. By small, what we really mean is that the function being integrated is relatively smooth over the interval [a,b]. For such a function, a smooth 
quadratic interpolant like the one used in Simpson's rule will give good result


(Wikipedia)
