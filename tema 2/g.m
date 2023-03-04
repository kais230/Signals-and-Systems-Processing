function semnal = g(t)

semnal = zeros(1, length(t));
prag = 0.00001;

for i = 1:length(t)
    if(t(i) - prag > 3) && (t(i) + prag < 8)
        semnal(i) = t(i)-5;
    end
end