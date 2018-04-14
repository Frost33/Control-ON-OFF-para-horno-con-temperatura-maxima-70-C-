fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datose = csvread("Resultados/40.csv",2,0);
t=(datose(:,1)'+16.6);
v1=10*(datose(:,2)');
v2=40+0*t;
plot(t,v1,'Color','blue');grid on;hold on;
plot(t,v2,'Color','red','LineWidth',1.2);grid on;xlabel('Tiempo [S]');
ylabel('Voltios [V]');
ax = gca;
%ax.YLim = [6.8, 12.1]; 
ax.XLim = [0 45]; 
xlabel('Tiempo [S]');
ylabel('Temperatura [°C]');
title('Respuesta de la planta Voltaje de referencia 4V','FontSize',13);


