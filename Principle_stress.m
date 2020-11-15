x = input('Enter the value of x')
  [12 8 5 1] % x refers to sigma x.
y = input('Enter the value of y')
  [12 8 5 1] % y refers to sigma y.
z = input('Enter the value of z')
  [12 8 5 1] % z refers to sigma z.
xy = input('Enter the value of xy')
  [12 8 5 1] % xy refers to tau xy.
yz = input('Enter the value of yz')
  [12 8 5 1] % yz refers to tau yz.
zx = input('Enter the value of zx');
  [12 8 5 1] % zx refers to tau xz

I1 = x + y + z
I2 = z*x + x*y + y*z - zx^2 - xy^2 - yz^2
I3 = z*x*y - y*(zx^2) - x*(yz^2) - z*(xy^2) + 2*zx*xy*yz

p = [1 -I1 I2 -I3];
r = roots(p)