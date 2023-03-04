clc
clear
close all;


pas =0.1;
tau=-10:pas:15;
figure(1);
subplot(2,1,1);
plot(tau,g(tau));
axis([min(tau), max(tau), -3, 4]);
xlabel('Timp \tau [s]'), ylabel('Amplitudine'), title('g(\tau)');
grid;

subplot(2,1,2);
plot(tau, f(tau));
axis([min(tau), max(tau), -4, 4]);
xlabel('Timp \tau [s]'), ylabel('Amplitudine'), title('f(\tau)');
grid;

tmin = -12;
tmax = 12;
t = tmin:pas:tmax;

for index_t = 1:length(t) 
    figure(2);
    subplot(2,1,1);
    plot(tau, g(tau),'b');
    xlabel('Timp \tau [s]');
    ylabel('Amplitudine');
    title('Semnalele g(\tau), f(\tau+t) și produsul lor');
    
    hold on
    plot(tau,f(tau + t(index_t)),'r');
    prod = g(tau).*f(tau + t(index_t));
    stem(tau, prod,'f');
    hold off
    
    axis([min(tau),max(tau),-4,7]);
    legend('g(\tau)', 'f(\tau+t)', 'g(\tau)f(\tau+t)');
    grid;
    
    corelatie(index_t) = integral(@(tau)g(tau).*f(tau + t(index_t)),-10,10);
    subplot(2,1,2);
    plot(t(1:length(corelatie)),corelatie);
    xlabel('Timp t [s]');
    ylabel('Amplitudine');
    title('Corelatia','Interpreter','latex');
    axis([min(tau),max(tau),-10,15]);
    grid;
    
    pause(0.1);
end