function [c,k]= secant(f,x0,x1,tol,n)
xk=x1;
xkminus1=x0;
for k=1:n
    xkplus1=(f(xk)*(xkminus1)-(xk)*f(xkminus1))/(f(xk)-f(xkminus1));
    abserr=abs(xkplus1-xk);
    relaerr=abserr/abs(xk+eps);
    if(abserr<tol)&&(relaerr<tol)
        c=xkplus1;
        return
    end
    xkminus1=xk;
    xk=xkplus1;
    
end