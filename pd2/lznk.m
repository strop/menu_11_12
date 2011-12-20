function x = lznk(A,y)
  [Q,R] = gsqr(A)
  
  b = Q'*y
  %n = length(b)
  n = length(b)
  x = zeros(n, 1);
  for i = [n:-1:1]
    x(i) = (b(i) - R(i, i+1:n)*x(i+1:n))/R(i, i);
  end
end;
