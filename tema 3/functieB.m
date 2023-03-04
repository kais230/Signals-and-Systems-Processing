function semnal = functieB(timp, T)

semnal = zeros(1,length(timp));


for i=1:length(timp)
    if mod(timp(i), T) <= T/2
        semnal(i) = (2/T)*timp(i);
    else
        semnal(i) = 0;
    end
end

figure(4);
name = 'Functia este';
plot(timp, semnal);
title(name);
xlabel('Timp[s]');
ylabel('Amplitudine');  