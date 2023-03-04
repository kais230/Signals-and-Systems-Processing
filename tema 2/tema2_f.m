clc
clear
close all;



pas =0.1;
tau=-10:pas:10;
figure(1);
subplot(2,1,1);
plot(tau,f(tau));
axis([min(tau), max(tau), -2, 5]);
xlabel('Timp \tau [s]'), ylabel('Amplitudine'), title('f(\tau)');
grid;

subplot(2,1,2);
plot(tau,gmin3(tau));
axis([min(tau), max(tau), -7, 5]);
xlabel('Timp \tau[s]'), ylabel('Amplitudine'), title('gmin3(\tau)');
grid;

tmin = -6;
tmax = 5;
t = tmin:pas:tmax;

for index_t=1:length(t)
figure(2);
subplot(2,1,1);
plot(tau,f(tau),'b');
xlabel('Timp \tau [s]');
ylabel('Amplitudine');
title('Semnalele f(\tau), gmin3(t-\tau) și produsul lor');

hold on
plot(tau,gmin3(t(index_t)-tau),'r');
prod = f(tau).*gmin3(t(index_t)-tau);
stem(tau, prod,'g');
hold off

axis([min(tau),max(tau),-7, 20]);
legend('f(\tau)', 'gmin3(t-\tau)', 'f(\tau)*gmin3(t-\tau)');
grid;

convolutie(index_t) = integral(@(tau)f(tau).*gmin3(t(index_t)-tau),-15,15);
subplot(2,1,2);
plot(t(1:length(convolutie)),convolutie);
xlabel('Timp t[s]');
ylabel('Amplitudine');
title('Convoluția (f*gmin3)(t)');
axis([min(tau),max(tau),-35, 10]);
grid;

pause(0.1);
end