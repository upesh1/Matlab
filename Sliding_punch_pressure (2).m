x =linspace(-0.002, 0.002)
v = input('Enter the value of v')
  [12 8 5 1] % v refers to poisson's ratio 
a = input('Enter the value of a')
  [12 8 5 1] % a refers to half of the range of applied load
p = input('Enter the value of p')
  [12 8 5 1] % p refers to applied load
u = input('Enter the value of u')
  [12 8 5 1] % u refers to friction coefficient
y = (1/pi)*acot((-2*(1-v))/(u*(1 - (2*v))))
px = ((p*cos(pi*y)) ./ (pi.*(a.^2-x.^2).^0.5)).*((a+x)./(a-x)).^y
pwx = ((p*cos(pi*y)) ./ (pi.*(a.^2-x.^2).^0.5))
plot(x, pwx, x, px)

