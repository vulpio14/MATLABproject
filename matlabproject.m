function [c, flag]= approx(f,a,b,n,m)
%create a vector for x data
xdata=[];
for j=0:m
    xdata=[xdata,(a+(b-a)*j/m)];
end
disp(xdata);
V=[];
p=0;
%create a Vandermore matrix by putting x data into the poewr of n
for i=1:n+1
    
    V(:,i)=xdata.^(p);
    p=p+1;
end
disp(V);
%find out y data
ydata=feval(f,xdata);
g=ydata.';
%conduct QR factorization 
[Q,R]=qr(V,0);
%check whether the matrix is full rank and if not do not
%compute c
if ((rank(R) == size(R,1))||(rank(R) == size(R,2)))
    c=[];
    flag=0;
    if issparse(V), R=qr(V);
    else
        R=triu(qr(V));
    end
    c=R\(R'\(V'*g));
else
    flag=1;
end
