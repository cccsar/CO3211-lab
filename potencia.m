#Busca el maximo autovalor 

function [x,k,r]=potencia(A,error,x,itmax)
  for k=1:1:itmax
    y=A*x; # x^(k+1)=A*x^(k)
    r=y(1)/x(1); # phi(x^(k+1))
    if norm(x-(y/norm(y,inf)),inf)<error
      return 
    endif
    x=y/norm(y,inf); #rescatar a u^(k-1)
 endfor
endfunction