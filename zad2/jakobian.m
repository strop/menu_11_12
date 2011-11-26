function MJ = jakobian(f, x, h)
  dimin = length(x);
  dimout = length(f(x));
  MJ = zeros(dimout, dimin);
  wersory = eye(dimin);
  for i = 1:dimout,
    for j = 1:dimin,
      MJ(i,j) = (f(x + h*wersory(j,:))(j) - f(x)(j))/h;
    end;
  end;
end;
