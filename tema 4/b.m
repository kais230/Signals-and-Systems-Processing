function y=b(t, n)

y = zeros(1,length(t));


prag = 0.00001;
for i=1:length(t)
 if (t(i) - prag > -3-(3/n)  && t(i) - prag < -3 )
    y(i) = -n*n;
 end
 if (t(i) - prag > -3  && t(i) - prag < -3+(3/n) )
    y(i) = n*n;
 end
 end
end