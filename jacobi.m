function [xn,k]=jacobi(A,b,xv,maxit,tol)
  n=length(A);
  xn=NaN*ones(n,1);
  for k=0:1:maxit
  
    for i=1:1:n
      suma1=0;
      
      for j=1:1:i-1
        suma1+=A(i,j)*xv(j);
      endfor
      
      suma2=0;
      for j=i+1:1:n
        suma2+=A(i,j)*xv(j);
      endfor
    
    xn(i)=(b(i)-suma1-suma2)/A(i,i);
    
    endfor  
    
    if (norm(xv-xn,inf))<tol
      return
    endif
    
    xv=xn;
    
  endfor
endfunction
    