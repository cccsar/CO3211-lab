#Descomposicion de cholesky: matriz simetrica definida positiva que puede
#descomponerse como el producto de una matriz triangular inferior por su 
#transpouesta
#importante matriz definida positiva y matriz simetrica
function l=cholesky(a)
  n=length(a);
  l=0*ones(n,n);
  for k=1:1:n
  
    suma=0;
    
    for i=1:1:k-1
      suma=suma+l(k,i)^2;
    endfor
      
    l(k,k)=(a(k,k)-suma)^(1/2);
    
    for i=k+1:1:n
      suma2=0;
      
      for m=1:1:k-1
        suma2=suma2+l(i,m)*l(k,m);
      endfor
      
      l(i,k)=(a(i,k)-suma2)/l(k,k);
      
      endfor
      
  endfor
   
endfunction