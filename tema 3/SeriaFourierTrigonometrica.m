function SeriaFourierTrigonometrica(T, nume)

f0 = 1/T;
omega0 = 2*pi*f0;
pas = T/100;
t=-T:pas:2*T;

a0pe2 = 1/T * integral(@(t)funNume(t, T, nume),0,T);

N = length(nume);

a=zeros(1,N);
b=zeros(1,N);   

for k=1:N
 a(k) = 2/T * integral(@(t)(funNume(t, T, nume).*cos(k*omega0*t)),0,T);
 b(k) = 2/T * integral(@(t)(funNume(t, T, nume).*sin(k*omega0*t)),0,T);
end


if abs(a(k))<10^-10
 a(k) = 0;
end
if abs(b(k))<10^-10
 b(k) = 0;
end

disp(a);
disp(b);
disp(a0pe2);