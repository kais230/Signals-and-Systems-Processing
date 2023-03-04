function y=a(t, n)

y = zeros(1,length(t));

prag = 0.00001;
for i=1:length(t)
 if (t(i) - prag > 7  && t(i) - prag < 7+(4/n) )
    y(i) = -2*n;
 end
 
 end
end