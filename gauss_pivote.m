% Algoritmo de Eliminacion Gaussiana con pivoteo parcial


function [A,b] = gauss_pivote(A,b)

[m,n]=size(A);

for k=1:1:n-1
    maximo=abs(A(k,k));
    imax=k;
    
    for i=k+1:1:n
        if abs(A(i,k))>maximo
            maximo=abs(A(i,k));
            imax=i;
        end
    end
    
    for j=k:1:n
        temp= A(k,j);
        A(k,j)=A(imax,j);
        A(imax,j)=temp;
    end
    
    temp=b(k);
    b(k)= b(imax);
    b(imax)=temp;
    
    
    for i=k+1:1:n
        alpha=A(i,k)/A(k,k);
        for j=k:1:n
            A(i,j)=A(i,j)-alpha*A(k,j);
            
        end
        b(i)=b(i)-alpha*b(k);
    end
end

display(A)
display(b)
end
