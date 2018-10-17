% Prueba

x = 0*ones(7,1);
for z=2:1:8
    x(z-1)=condition(z)
end
dominio = 2:1:15

plot1=plot(dominio,x)
legend("Condicion vs n")