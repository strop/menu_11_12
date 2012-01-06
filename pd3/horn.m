% b - x-y bazy Newtona
% a - współczynniki w bazie newtona
function v = horn(b, a, x)
  "horner"
  b;
  a;
  x;
  n = length(b);
  v = a(end);
  for i = [n-1 : -1 : 1]
    v = v*(x - b(i)) + a(i);
  end
end
