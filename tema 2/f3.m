function semnal = f3(t)

semnal = zeros(1, length(t));
prag = 0.00001;

for i = 1:length(t)
    if(t(i) - prag > -2) && (t(i) + prag < 2)
        semnal(i) = -(t(i)^2) -(6*t(i))-6;
    end
end