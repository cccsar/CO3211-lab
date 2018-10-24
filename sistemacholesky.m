
function x=sistemacholesky(a,b)
  L=cholesky(a);
  U=L.';
  y=sust_adel(L,b);
  x=sust_atras(U,y);
endfunction