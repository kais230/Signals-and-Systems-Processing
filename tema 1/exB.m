clc
clear
close all

M = round(10*rand(10,10));

%1) Suma elementelor din colturile matricei
suma_colt = M(1, 1) + M(1, 10) + M(10, 1) + M(10, 10);
suma_colt

%2) Suma elementelor matricei
suma = 0;
for i = 1:10
  for j = 1:10
  suma = suma + M(i, j);
  end
end
suma

%3) Matricea identitate
M2 = mat_id(4, 4)

%4) Vector coloana cu sumele elementelor de pe fiecare linie
V = vector_col(M)

%5) Functie matrice valoare noua - valoare veche
[M, k] = val_noua(M, 5, 7)

%6) Aproximare pi
p = aproximare_pi(exp(1)) 

%7) Vectori elemente pare si impare
[Vp, Vi] = par_impar(M)

%8) Calcul
c = calcul(3, 2)

%9) Vector 1001 valori
 t = linspace(0,4*pi,1001);
 for i = 1:length(t)
 p = calcul(3, t);
 end

 plot(t, p);
 xlabel('Timp (s)');
 ylabel('p');
 title('Exercitiul B9');

 
 
 
 
