function approx = newton(f, x0, h)
  approx = [x0];
  growth = 0;
  x = x0;
  df = @(x) (f(x+h)-f(x-h))/(2*h);
  do
    x = x - f(x)/df(x);
    approx = [approx; x];
%    printf("%ld\n", df(x))
    disp(df(x))
  until (abs(f(approx(end) - f(approx(end-1))))  < (10^-8)*h) || f(x) == 0;
end;
