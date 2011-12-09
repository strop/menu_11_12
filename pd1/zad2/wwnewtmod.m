function [x, lambda, ok] = wwnewtmod(f, x0, h, res, iter)
  assert(h>0);
  assert(iter > 0);
  assert(res > 0);
  dimin = length(x0);
  dimout = length(f(x0));
  x = [x0];
  lamwyk = 0;
  lambda =[];
  k=0
  while k <= iter && norm(f(x(end))) > res, 
    MJ = jakobian(f, x(end), h);
    MJ = inv(MJ);
    fxk = f(x(end));
    prawa = MJ*fxk;
    lamwyk = 0;
    while norm(f(x(end) - (1/(2^lamwyk))*prawa)) >= norm(fxk) && lamwyk < 7,
      lamwyk++;
    end;
    lambda = [lambda; 1/(2^lamwyk)];
    x = [x; x(end) - lambda(end)*prawa];
    k++;
  end;
end;

