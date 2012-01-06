function void = compareFunc(Xi, f)
  Yi=[];
  for i=Xi'
    Yi=[Yi;f(i)];
  end
  hold on;
  l = min(Xi);
  r = max(Xi);
  d = r-l;
  range=[l-d/2:0.1:r+d/2];
  range
  fval=[];
  for i=range
    fval=[fval;f(i)];
  end;
  plot(range, fval);
  plot(range, interpolacja(Xi,Yi,range));
  hold off;
end

function void = comparePoint(Xi, Yi)

end
