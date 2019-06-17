function [x,n]= Gauss(A,b,x0,tol,maxiter)
N=length(b);
x=zeros(N,1);

for n=1:maxiter
    for j=1:N
        x(j)=(b(j)-A(j,1:j-1)*x(1:j-1)-A(j,j+1:N)*x0(j+1:N))/A(j,j);
    end
    abserr=norm(x-x0);
    relerr=abserr/norm(x+eps);
    if(abserr<tol)&&(relerr<tol)
        return
    end
    x0=x;
end