function y = iter_prosta(f, x0, res)
iterlimit = 1000
y = [x0]
iter = 0
do
  y = [y, f(y(length(y)))]
  iter++
until (abs(y(length(y)-1) - y(length(y))) < res || iter == iterlimit)
end

