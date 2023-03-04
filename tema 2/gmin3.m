function semnal = gmin3(t)

semnal = zeros(1, length(t));
prag = 0.00001;

for i = 1:length(t)
    if(t(i) - prag > 0) && (t(i) + prag < 5)
        semnal(i) = t(i)-5;
    end
end