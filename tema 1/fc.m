function rez = fc(t,T)
  rez = zeros(1,length(t));

for in_t = 1:length(t)
 if mod(t(in_t),T)<T/2
 rez(in_t) = 1;
 else
 rez(in_t) = -1;
 end
end