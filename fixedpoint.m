function c=fixedpoint(g,x0,tol,n)
xk=x0;
for k=1:n
    xkplus1 = g(xk);
    abserr=abs(xkplus1-xk);
    relaerr=(abserr/(abs(xk+eps)));
    if ((abserr<tol)&&(relaerr<tol))
        c=xkplus1;
        return
    end
    c=xkplus1;
    xk=xkplus1;
end
