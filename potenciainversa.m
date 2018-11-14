function [x,k,r]=potenciainversa(A,error,x,itmax) 
  A=LU(A); 
  for k=1:1:itmax 
    y=sistemaLU(A,x) ;
    r=y(1)/x(1);
    if norm(x-(y/norm(y,inf)),inf)<error
      return 
    endif
    x=y/norm(y,inf);
  endfor
  r=1/r;
endfunction