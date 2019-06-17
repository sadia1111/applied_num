function x = compsimp(f,a,b,n)
% The function implements the composite Simpson's rule

h = (b-a)/n;
x = zeros(1,n+1);
x(1) = a;
x(n+1) = b;
p = 0;
q = 0;

% Define the x-vector
for i = 2:n
    x(i) = a + (i-1)*h;
end

% The 2 factor terms
for i = 2:(((n+1)/2) - 1 )
    q = q + (f(x(2*i)));
end

% The 4 factor terms
for i = 2:((n+1)/2)
   p = p + (f(x(2*i -1)));
end

% Calculate final output
x = (h/3)*(f(a) + 2*q + 4*p + f(b));