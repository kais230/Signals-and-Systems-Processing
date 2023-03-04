function semnal = f(t)

semnal = zeros(1, length(t));
prag = 0.00001;

for i = 1:length(t)
    if(t(i) - prag > -5) && (t(i) + prag < -1)
        semnal(i) = -(t(i)^2) -(6*t(i))-6;
    end
end