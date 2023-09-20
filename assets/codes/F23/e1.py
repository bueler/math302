#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt
from dirfield import dirfield

# differential equation and initial condition
def f(x,y):
    return x + y**2
x0 = 0.0
y0 = 0.0

# part (a): direction field (blue) and initial condition (green)
dirfield(f, [-0.05,0.25,-0.005,0.02],mx=13,my=11)
plt.plot(0.0,0.0,'g.',ms=18.0)

# part (b): two steps of Euler's with h=0.1 (black)
#           (without a loop)
h = 0.1
x1 = x0 + h
y1 = y0 + h * f(x0,y0)
x2 = x1 + h
y2 = y1 + h * f(x1,y1)
plt.plot([x0,x1,x2], [y0,y1,y2], 'k.-', ms=14)
print('h=0.1:   y(0.2) is approximately %f' % y2)

# part (c): four steps of Euler's with h=0.05 (red)
#           (with a loop)
h = 0.05
xx = np.linspace(0.0,0.2,5)  #  x_n = x_0 + n h
yy = np.zeros(5)
for n in range(4):
    yy[n+1] = yy[n] + h * f(xx[n],yy[n])
plt.plot(xx, yy, 'r.-', ms=14)
print('h=0.05:  y(0.2) is approximately %f' % yy[4])

plt.show()
