%Toeplitz
function T=toeplitz(v)
  n=length(v);
  largo=n-((n/2)-0.5);
  for k=1:1:largo 
    for j=0:1:(largo-k)
      T(j+1,k+j)=v(largo+k-1);
    end
  end
  for k=2:1:largo
    for j=0:1:(largo-k)
      T(j+k,1+j)=v(largo-k+1);
    endfor
  endfor    
endfunction
