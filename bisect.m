function[c,k]=bisect (f,a,b,tol)

if  (f(a)==0)
    c=a;
    k=0;
elseif   (f(b)==0)
    c=b;
    k=0;
    return
end

if (f(a)*f(b)>0)
    disp('No Root in this Interval')
    return
end
n=ceil((log10(b-a)-log10(tol))/log10(2));
for k=1:n
    c=(a+b)/2;
if (f(c)==0)
    return
elseif (f(c)*f(b)<0)
        a=c;
else
    b=c;
end 
end