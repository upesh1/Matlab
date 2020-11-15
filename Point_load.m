% If the load load is apllied from the center then take E & n as 0.
% If load is applied from a given coordinate (a,b) take E = a & n = b 
% If there are 2 loads applied separately in different coordinated then calculate stress separately for each of them and then use principle of superposition (add them up).

v = input('Enter the value of v')
  [12 8 5 1] % v refers to sigma poisson's ratio .
x = input('Enter the value of x')
  [12 8 5 1]
y = input('Enter the value of y')
  [12 8 5 1]
z = input('Enter the value of z')
  [12 8 5 1]
P = input('Enter the value of P')
  [12 8 5 1] % p refers to applied load
E = input('Enter the value of E')
  [12 8 5 1] % E doesnot refer to modulas of elasticity. E here is the x coordinate of the applied load.
n = input('Enter the value of n')
  [12 8 5 1] % n refers to eta
  r = sqrt((x-E)^2 + (y-n)^2)
  p = sqrt((x-E)^2 + (y-n)^2 + z^2) % p refers to rho
sx1 = (P/(2*pi))*((1-2*v)/r^2 *(((1 - z/p)* ((x-E)^2 - (y-n)^2)/r^2) + (z*(y-n)^2)/p^3) -(3*z*(x-E)^2)/p^5)
sx2 = (P/(2*pi))*((1-2*v)/r^2 *(((1 - z/p)* ((y-n)^2 - (x-E)^2)/r^2) + (z*(x-E)^2)/p^3) -(3*z*(y-n)^2)/p^5)
tz1 =  (-3*P*z^3)/(2*pi*p^5)
txy1 = (P/(2*pi))*((1-2*v)/r^2 *((2*(1 - z/p)* ((x-E)*(y-n))/r^2) - (z*(x-E)*(y-n))/p^3) -(3*z*(x-E)*(y-n))/p^5)
tyz1 = (-3*P/(2*pi))*((y-n)*z^2)/p^5
tzx1 = (-3*P/(2*pi))*((x-E)*z^2)/p^5
