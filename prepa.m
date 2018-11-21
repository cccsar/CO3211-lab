#polinomio interpolante natural
#Dados (x0,f0),(x1,f1),...,(xn,fn)
#xi!=x
# a) grado (p) <=n
# b) p(xi)=fi;
# p(t)=ao+a1*t+a2*t^2+...+an*t^n

#p=polyfit(X,Y,n) n es el grado del polinomio 

#En octave los polinomios se escriben de derecha a izq,como arreglos. EJ: 
#p=[an,an-1,..,a0]

#polyval(p,k) ... evalua el polinomio en k 


#Ejemplo 1
x=linspace(0,4*pi,10); #divide al intervalo [0,4*pi] en 10 partes equidistantes
y=sin(x);
p=polyfit(x,y,7); #genera un polinomio de grado 7 
x1=linspace(0,4*pi);
y1=polyval(p,x1); 
figure
plot(x,y,'o');
hold on 
plot(x1,y1);
hold off

#Ejemplo 2: 
x=linspace(0,1,5);
y=1./(1+x);
p=polyfit(x,y,4);
x1=linspace(0,2);
y1=1./(1+x1);
f1=polyval(p,x1);
figure
plot(x,y,'o');
hold on 
plot(x1,y1);
plot(x1,f1,'r--');
legend('y','y1','f1');

roots(p)
error=sum((polyval(p,x)-y1).^2)/length(x1) #Esta vaina es un promedio de errores
#se eleva al cuadrado por algo llamado 'error minimo cuadrado' 
