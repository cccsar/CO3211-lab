%Inversa
function inv=inversa(A)
  n=length(A);
  e=0*ones(n,1);
  inv=[]
  for k=1:1:n
    e=0*ones(n,1);
    e(k)=1;
    x=sistemaLU(A,e);
    inv=[inv,x];
  endfor
endfunction
