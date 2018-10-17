function inv=inversapro(A)
  n=length(A);
  Lu=LU(A);
  L=tril(Lu,-1)+eye(n);
  U=triu(Lu);
  inv=[];
  for k=1:1:n
    e=0*ones(n,1);
    e(k)=1;
    y=susthaciadelante(L,8);
    x=susthaciatras(U,y);
    inv=inv[inv,x];
  endfor
endfunction
  