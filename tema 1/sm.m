function rez = sm(t, T, Om0)
  rez = zeros(1,length(t));
  Om0 = 2 * pi / T;
  
for in_t = 1:length(t)
 if mod(t(in_t),T)<T/2
 rez(in_t) = sin(Om0*t(in_t));
 else
 rez(in_t) = 0;
end
end