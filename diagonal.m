% Algoritmo para resolver sistema de ecuaciones Ax=b cuando A 
% es una matriz diagonal

function x=diagonal(A,b)
   n=length(A);
   x=nan*ones(n,1);
   for i=1:1:n
      x(i)=b(i)/A(i,i);
    end
endfunction