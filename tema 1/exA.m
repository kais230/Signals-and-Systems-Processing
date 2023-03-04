clc
clear
close all
f0 = 10;
T = 1/f0;
omega0=2*pi*f0;
pas = 0.001;
t=0*T:pas:5*T;

x = fc(t, T);
figure(1);
plot(t,x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('x = functia de comutatie');

x = fi(t, T);
figure(2);
plot(t,x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('x = functia de intrerupere');

x = sm(t, T, omega0);
figure(3);
plot(t,x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('x = sinus redresat mono-alternanta');

x = sd(t, T, omega0);
figure(4);
plot(t,x);
xlabel('Timp (s)');
ylabel('Amplitudine');
title('x = sinus redresat dubla alternanta');
