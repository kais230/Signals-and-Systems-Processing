function rez = sd(t, T, Om0)
  rez = zeros(1,length(t));
  Om0 = 2 * pi / T;
  
for in_t = 1:length(t)
 rez(in_t) = abs(sin(Om0*t(in_t)));
end
end