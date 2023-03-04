function rezultat = M2(m, n)
  rezultat = zeros(m, n);
  for i = 1:m
    for j = 1:n
      if (i == j)
        M2(i, j) = 1;
      else
        M2(i, j) = 0;
      end
    end
  end
  M2
 end