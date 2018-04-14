fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datose = csvread("Resultados/34.csv",2,0);
t=(datose(:,1)')+95.7;
v1=10*(datose(:,2)');
v2=34+0*t;
plot(t,v1,'Color','blue');grid on;hold on;
plot(t,v2,'Color','red');grid on;
xlabel('Tiempo [S]');
ylabel('Voltios [V]');
ax = gca; 
ax.XLim = [0 50]; 
xlabel('Tiempo [S]');
ylabel('Temperatura [°C]');
title('Respuesta de la planta Voltaje de referencia 3.4V','FontSize',13);


