clc;
load 'C:\Users\student01\Desktop\asdsa\capacitor_measured.txt' 
load 'C:\Users\student01\Desktop\asdsa\capacitor_simulation.txt' 
load 'C:\Users\student01\Desktop\asdsa\input_simulation.txt' 
Vmein=capacitor_measured(:,1);
Vmeout=capacitor_measured(:,2);
Vsiin=capacitor_simulation(:,1);
Vsiout=capacitor_simulation(:,2);
Vin=input_simulation(:,1);
Vout=input_simulation(:,2);

plot()





xlabel('Input Voltage');
ylabel('Output Voltage');
title('Measured vs. Simulation');
legend('Measured Voltage','Simulated Voltage');
