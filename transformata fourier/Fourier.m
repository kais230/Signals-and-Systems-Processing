close ("all"),clear,clc;

T=10;
pas=0.01;
t= -T-2:pas:T+2; 

figure(1);
plot(t,poarta(t,1,-T,T));
axis([min(t),max(t),-1,2]);
xlabel("Timp [s]"),ylabel("Amplitudine");
title("semnalul poarta");

K=10;
pasw=pi/(T*100);
w=  -K*pi/T: pasw:K*pi/T;   
%transformata Fourier de la punctul b

Fb= zeros(1,length(w));

for i=1:length(w)
    Fb(i) = integral(@(t) poarta(t,1,-T,T).*exp(-1i*w(i)*t),-T-2,T+2);

    re=real(Fb(i));
    im=imag(Fb(i));

    if abs(re)<10^-10
        re=0;
    end
    if abs(im)<10^-10
        im=0;
    end

    Fb(i)=re+1i*im;
end

figure(2);  
plot(w,Fb);
xlabel("Frecventa [rad/s]"), ylabel("Amplitudine");
title("Transformata")


%punctul c
t0=2;

figure(3);
plot(t,poarta(t-t0,1,-T,T));
axis([min(t),max(t),-1,2]);
xlabel("Timp [s]"),ylabel("Amplitudine");
title("semnalul poarta deplasat");


Fc= zeros(1,length(w));

for i=1:length(w)
    Fc(i) = integral(@(t) poarta(t-t0,1,-T,T).*exp(-1i*w(i)*t),-T+t0-2,T+t0+2);

    re=real(Fc(i)); 
    im=imag(Fc(i));

    if abs(re)<10^-10
        re=0;
    end
    if abs(im)<10^-10
        im=0;
    end

    Fc(i)=re+1i*im;
end

figure(4);  
subplot(1,2,1);
plot(w,abs(Fc));
xlabel("Frecventa [rad/s]"), ylabel("Amplitudine");
title("Modulul Transformatei Fourier ")


subplot(1,2,2);
plot(w,angle(Fc));
xlabel("Frecventa [rad/s]"), ylabel("Amplitudine");
title("Faza Transformatei Fourier ")


figure(5);
plot3(w,real(Fc),imag(Fc));
xlabel("Frecventa [rad/s]"), ylabel("Partea reala"), zlabel("partea imaginara");    
title("Transformatei Fourier ")

%reprezentare pt e^-j w t0


figure(6);

plot3(w, real(exp(-1i*w*t0)), imag(exp(-1i*w*t0)));
xlabel("Frecventa [rad/s]"), ylabel("Partea reala"), zlabel("partea imaginara");    
title("exponentiala e^{-j \omega t_0}");

%punctul d
w0=pi/T;
fd=poarta(t,1,-T,T).*exp(1i*w0*t);
figure(7);
plot3(t,real(fd), imag(fd));
xlabel("timp [s]"), ylabel("partea reala"), zlabel("partea imaginara");
title("poarta inmultita cu exponentiala")


Fd= zeros(1,length(w));

for i=1:length(w)
    Fd(i) = integral(@(t) poarta(t,1,-T,T).*exp(-1i*w(i)*t).*exp(1i*w(i)*t),-T-2,T+2);

    re=real(Fd(i)); 
    im=imag(Fd(i));

    if abs(re)<10^-10
        re=0;
    end
    if abs(im)<10^-10
        im=0;
    end

    Fd(i)=re+1i*im;
end

figure(8);  
plot(w,Fd);
hold on;
plot(w,Fb);

xlabel("Frecventa [rad/s]"), ylabel("Amplitudine");
title("Transformata Fourier pt poarta inmutita cu exponentiala")
    
%punctul e

fe=poarta(t,1,-T,T).*(-1i*t);
plot3(t,real(fe),imag(fe));
xlabel("timp [s]"), ylabel("partea reala"), zlabel("partea imaginara");
title("poarta inmultita cu -jt");

Fe= zeros(1,length(w));

for i=1:length(w)
    Fe(i) = integral(@(t) poarta(t,1,-T,T).*exp(-1i*t).*exp(-1i*w(i)*t),-T-2,T+2);

    re=real(Fe(i)); 
    im=imag(Fe(i));

    if abs(re)<10^-10
        re=0;
    end
    if abs(im)<10^-10
        im=0;
    end

    Fe(i)=re+1i*im;
end

figure(10);  
plot(w,Fe);
hold on;
plot(w,Fb);
xlabel("Frecventa [rad/s]"), ylabel("Partea reala");
title("Transformata Fourier pt poarta inmutita cu -jt")







