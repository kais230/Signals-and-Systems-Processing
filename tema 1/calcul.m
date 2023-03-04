function rez = calcul(n, t)
  rez = 0;
  for k = 1:n
    rez = rez + ((sin((2 * k - 1) * t)) / (2 * k - 1));
  end
end
