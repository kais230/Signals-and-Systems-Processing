function [rez, k] = aproximare_pi(e)
  rez = 0;
  k = 0;
  s = 0;
  while rez < pi - e || rez > pi + e
    s = s + ((-3)^(-k)) / (2 * k + 1);
    k = k + 1;
    rez = s * sqrt(12);
  end
end
  