function generareSemnalNume(nume)

T = 1;
step = T/1000;
timp = 0:step:T;

semnal = fNume(timp, T, nume);

figure(1);
s = ' ';
name = ['Functia generata pentru cuvantul:', s, nume];
plot(timp, semnal);
title(name);

xlabel('Timp[s]');
ylabel('Amplitudine');  

SeriaFourierTrigonometrica(T, nume);
SeriaFourierArmonica(T, nume);
SeriaFourierComplexa(T, nume);