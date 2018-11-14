#Dibujo de disco de Gershgorin
function [] =disco(A) 
  circulo=0:0.01:2*pi;
  n=length(A);
  x=zeros(length(circulo),n);
  r=sum(abs(A),2)-abs(diag(A)); 
  for i=1:n
    x(:,i)=r(i)*cos(circulo)+real(A(i,i));
    y(:,i)=r(i)*sin(ciruclo)+imag(A(i,i));
  end
  e=eig(A); 
  plot(x,y,real(e),img(e),'x');
end


    