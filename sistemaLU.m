function x=sistemaLU(A,b)
  n=length(A);
  Lu=LU(A);
  L=tril(Lu,-1)+eye(n);
  U=triu(Lu);
  y=sust_adel(L,b);
  x=sust_atras(U,y);
endfunction