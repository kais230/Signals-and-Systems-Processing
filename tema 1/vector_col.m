function rez = V(M)
  rez = zeros(10, 1);
  s = 0;
  for i = 1:10
    for j = 1:10
        s = s + M(i, j);
    end
    rez(i, 1) = s;
    s = 0;
    end
  end