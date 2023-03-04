function [Vp, Vi] = par_impar(A)
 m = 1;
 n = 1;
 Vp = zeros(1, m);
 Vi = zeros(1, n);
 
  for i = 1:10
    for j = 1:10
      if mod(A(i, j) , 2) == 0
        Vp(m) = A(i, j);
        m = m + 1;
      else
        Vi(n) = A(i, j);
        n = n + 1;
      end
    end
  end
