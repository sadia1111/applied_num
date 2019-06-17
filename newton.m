function [c,k]= newton(f,fprime,x0,tol,n)
xk=x0;
for k=1:n
    xkplus1=xk-(f(xk)/fprime(xk));
    abserr=abs(xkplus1-xk);
    relaerr=abserr/abs(xk+eps);
    if(abserr<tol)&&(relaerr<tol)
        c=xkplus1;
        return
    end
    xk=xkplus1;
end