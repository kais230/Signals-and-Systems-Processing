function y=c(t, n)

y = zeros(1,length(t));


prag = 0.00001;
for i=1:length(t)
 if (t(i) - prag > -5-(3/n)  && t(i) - prag < -5 )
    y(i) = -4*n*n*t(i)-20*n*n-12*n;
 end
 if (t(i) - prag > -5  && t(i) - prag < -5+(3/n) )
    y(i) = 4*n*n*t(i)+20*n*n-12*n;
 end
 end
end