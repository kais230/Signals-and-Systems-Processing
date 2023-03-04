function [M, c] = val_noua(M, v1, v2)
  c = 0;
  
  for i = 1:10
    for j = 1:10
      if M(i, j) == v2;
        M(i, j) = v1;
        c = c+1;
      end
    end
  end
end