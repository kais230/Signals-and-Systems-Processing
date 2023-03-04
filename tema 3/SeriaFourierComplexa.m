function SeriaFourierComplexa(T, nume)

f0 = 1/T;
omega0 = 2*pi*f0;
pas = T/100;
t=-T:pas:2*T;

 
N = 100; 
C = zeros(1,2*N+1);
for n=-N:N
 C(n+N+1) = 1/T * integral(@(t)funNume(t, T, nume).*exp(-1j*n*omega0*t),0,T);

 re = real(C(n+N+1));
 im = imag(C(n+N+1));
 if abs(re)<10^-10
 re = 0;
 end
 if abs(im)<10^-10
 im = 0;
 end
 C(n+N+1)=re+1j*im;
end
C




figure(3);
subplot(2,1,1);
stem((-N:N)*omega0,abs(C));
xlabel('Frecventa \omega [rad/s]');
ylabel('Amplitudinea |C(n\omega_0)|');
title('Spectrul de amplitudine');

subplot(2,1,2);
stem((-N:N)*omega0,angle(C));
xlabel('Frecventa \omega [rad/s]');
ylabel('Faza arg\{C(n\omega_0)\}');
title('Spectrul de faze');

