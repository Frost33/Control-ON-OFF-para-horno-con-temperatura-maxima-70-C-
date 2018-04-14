fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datose = csvread("DatosExperimentales/EscalonV5a6.csv",2,0);
t5=(datose(:,1)');
v5=(datose(:,2)')-3.35;
datose = csvread("DatosExperimentales/EscalonV7a8.csv",2,0);
t7=(datose(:,1)')+512;
v7=(datose(:,2)')-0.382;
datose = csvread("DatosExperimentales/EscalonV9a10.csv",2,0);
t9=(datose(:,1)')+512;
v9=(datose(:,2)')-0.455;
datose = csvread("DatosExperimentales/EscalonV11a12.csv",2,0);
t11=(datose(:,1)'+514);
v11=(datose(:,2)'-0.778);
plot(t5,100*v5,'Color','red');grid on;hold on;
plot(t7,1000*v7,'Color','blue');grid on;hold on;
plot(t9,1000*v9,'Color','black');grid on;hold on;
plot(t11,v11*1000,'Color','magenta');grid on;hold on;
xlabel('Tiempo [S]');
ylabel('Temperatura [°C]');
legend('Escalon de 5V a 6V','Escalon de 7V a 8V','Escalon de 9V a 10V','Escalon de 11V a 12V')
legend('Location','southeast')
legend('boxoff')
title('Respuesta del Sistema para Diferentes Escalones','FontSize',13);
ax = gca;
ax.XLim = [0 200]; 