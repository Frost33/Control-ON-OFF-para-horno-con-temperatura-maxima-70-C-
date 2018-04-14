Vin=[5 5.8 7.6 8.6 9.8 11.4 12.6];
Vout=[3.4 3.8 4.27 4.64 5.5 7.6 8.25];
Vin1=5:0.2:15;
Vout1=0.6489*Vin1-0.2852;
plot(Vin,Vout);hold on;grid on;
plot(Vin1,Vout1,'--');
hold on;grid on;
xlabel('Voltaje de Entrada[V]');
ylabel('Voltaje de Salisa [V]');
legend('Voltaje de Entrada vs Voltaje del Sensor en Tiempo Estable','Linea de Tendecia')
legend('Location','southeast')
legend('boxoff')
title('Respuesta del sistema en Tiempo estable','FontSize',13);
ax = gca;
ax.XLim = [5 12.6]; 
