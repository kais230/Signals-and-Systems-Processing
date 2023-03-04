function semnal = fNume(timp, T, nume)

semnal = zeros(1,length(timp));


for i=1:length(timp)
    for j=1:length(nume)
        if mod(timp(i), T) >= (j-1)*T/length(nume) && mod(timp(i),T) < j*T/length(nume)
            semnal(i) = double(nume(j)) - 64;
            break;
        end
    end
end