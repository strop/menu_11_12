function approx = newton(f, x0, h)
  approx = [x0];
  growth = 0;
  x = x0;
  df = @(y) (f(y+h)-f(y-h))/(2*h);
  do
    x = x - (f(x)/df(x));
    approx = [approx; x];
  until (abs(f(approx(end)) - f(approx(end-1)))  < abs((10^-8)*h)) || f(x) == 0;
end;
