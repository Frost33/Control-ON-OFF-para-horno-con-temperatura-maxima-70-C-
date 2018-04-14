fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datose = csvread("Resultados/52.csv",2,0);
t=(datose(:,1)'+16.6)+21.9;
v2=52+0*t;
v1=10*(datose(:,2)');
plot(t,v1,'Color','blue');grid on;hold on;
plot(t,v2,'Color','red','LineWidth',1.2);
xlabel('Tiempo [S]');
ylabel('Voltios [V]');
ax = gca;
%ax.YLim = [6.8, 12.1]; 
ax.XLim = [0 80]; 
xlabel('Tiempo [S]');
ylabel('Temperatura [°C]');
title('Respuesta de la planta Voltaje de referencia 5.2V','FontSize',13);


