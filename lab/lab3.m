f = @(x) (x-1).^4
g = @(x) x.^4 - 4*x.^3+ 6*x.^2 - 4*x +1
x = linspace(-100, 100, 201)


#plot(x, f(x), x, g(x))

h = @(x) (myexp(x) - exp(x))/exp(x)

plot(x,h(x))

