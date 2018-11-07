matriz_prueba=hilb(11)+1.025*eye(11);
x=ones(11,1);
b=matriz_prueba*x
t=cputime
[x,k]=jacobi(matriz_prueba,b,0*ones(11,1),1500,10^-7)