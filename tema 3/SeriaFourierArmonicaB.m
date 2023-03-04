function SeriaFourierArmonicaB(T)

f0 = 1/T;
omega0 = 2*pi*f0;
pas = T/100;
t=-T:pas:2*T;


N = 10; 
a=zeros(1,N);
b=zeros(1,N);
A=zeros(1,N+1);
a0pe2 = 1/T * integral(@(t)functieB(t,T),0,T);

if a0pe2<10^-10
 a0pe2=0;
end

A(1)=abs(a0pe2);
if a0pe2>=0
 fi(1)=0;
else
 fi(1)=-pi;
end

for k=1:N
 % Determinarea coeficientilor seriei Fourier trigonometrice
 a(k) = 2/T * integral(@(t)(functieB(t,T).*cos(k*omega0*t)),0,T);
 b(k) = 2/T * integral(@(t)(functieB(t,T).*sin(k*omega0*t)),0,T);
 if abs(a(k))<10^-10
 a(k) = 0;
 end
 if abs(b(k))<10^-10
 b(k) = 0;
 end

 % coeficientii SFA
 A(k+1) = sqrt(a(k)^2+b(k)^2);
 if a(k)==0 && b(k)==0
 fi(k+1) = 0;
 else
 if a(k)>=0
 fi(k+1) = -atand(b(k)/a(k));
 else
 fi(k+1) = -atand(b(k)/a(k))-pi;
 end
 end
end

disp(A);
disp(fi);


figure(5);
subplot(2,1,1);
stem([0:N]*omega0,A);
xlabel('Frecventa [rad/s]');
ylabel('Amplitudini A_k');
title('Spectrul de amplitudini');

subplot(2,1,2);
stem([0:N]*omega0,fi);
xlabel('Frecventa [rad/s]');
ylabel('Faze \phi_k');
title('Spectrul de faze');