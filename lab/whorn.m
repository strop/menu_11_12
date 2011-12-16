p = @(x) 1 + 2*(x-1) + 3*(x-1)*(x+2) = 3*x^2 + 5*x - 7

b = [1,2,3]
xb = [1,-2,3]

function wart = whorn(x, b, xb)
  t = 1
  wart = 0
  n = length(xb)
  for i = 0:n,
    wart += t*b(i)
    t *= x - xb(i)
  end
end
