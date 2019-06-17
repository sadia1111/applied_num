function [x,n]= jacobi(A,b,x0,tol,maxiter)

[d d] = size(A)
for p = 1:d-1,
  [Max J] = max(abs(A(p:d,p)));  % Find the pivot row.
  T = row(p);
  row(p) = row(J+p-1);
  row(J+p-1) = T;  
  if  A(row(p),p) == 0, break, end
  for k = p+1:d,
    M = A(row(k),p)/A(row(p),p);
    A(row(k),p+1:d+1) = A(row(k),p+1:d+1) - M*A(row(p),p+1:d+1);
  end
end
N=length(b);
x=zeros(N,1);
for n=1:maxiter
    for j=1:N
        x(j)=(b(j)-(A(j,[1:j-1,j+1:N])*x0([1:j-1,j+1:N])))/A(j,j);
    end
    abserr=norm(x-x0);
    relerr=abserr/norm(x+eps);
    if(abserr<tol)&&(relerr<tol)
        return
    end
    x0=x;
end