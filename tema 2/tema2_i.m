clc
clear
close all;


pas =0.1;
tau=-10:pas:20;
figure(1);
subplot(2,1,1);
plot(tau,f(-tau));
axis([min(tau), max(tau), -3, 4]);
xlabel('Timp \tau [s]'), ylabel('Amplitudine'), title('f(-\tau)');
grid;

subplot(2,1,2);
plot(tau,gmin5(tau));
axis([min(tau), max(tau), -10, 4]);
xlabel('Timp \tau [s]'), ylabel('Amplitudine'), title('gmin5(\tau)');
grid;

tmin = -5;
tmax = 10;
t = tmin:pas:tmax;

for index_t=1:length(t)
figure(2);
subplot(2,1,1);
plot(tau,f(-tau),'b');
xlabel('Timp \tau [s]');
ylabel('Amplitudine');
title('Semnalele f(-\tau), gmin5(t-\tau) și produsul lor');

hold on
plot(tau,gmin5(t(index_t)-tau),'r');
prod = f(-tau).*gmin5(t(index_t)-tau);
stem(tau, prod,'g');
hold off

axis([min(tau),max(tau),-7, 10]);
legend('f(-\tau)', 'gmin5(t-\tau)', 'f(-\tau)*gmin5(t-\tau)');
grid;

convolutie(index_t) = integral(@(tau)f(-tau).*gmin5(t(index_t)-tau),-10,10);
subplot(2,1,2);
plot(t(1:length(convolutie)),convolutie);
xlabel('Timp t[s]');
ylabel('Amplitudine');
title('Convoluția (f*gmin5)(t)');
axis([min(tau),max(tau),-10, 15]);
grid;

pause(0.1);
end