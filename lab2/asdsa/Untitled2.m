clc;
load 'C:\Users\student01\Desktop\asdsa\dc_sweep_measured.txt' -ascii
load 'C:\Users\student01\Desktop\asdsa\dc_sweep_simulation.txt' -ascii
Vmein=dc_sweep_measured(:,1);
Vmeout=dc_sweep_measured(:,2);
Vsiin=dc_sweep_simulation(:,1);
Vsiout=dc_sweep_simulation(:,2);
Pererr=100*(abs(Vmein-Vmeout))./Vmein;
subplot(2,1,1)
plot(Vmein,Vmeout,'*',Vsiin,Vsiout,'r')
xlabel('Input Voltage');
ylabel('Output Voltage');
title('Measured vs. Simulation');
legend('Measured Voltage','Simulated Voltage');
grid
subplot(2,1,2)
plot(Vmein,Pererr)
xlabel('Iinput Voltage');
ylabel('%Error')
title('Input vs % Error')
grid
