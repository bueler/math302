#!/usr/bin/env python3

'''
draw direction field and family of solution curves
for the quadratic DE
     dy/dx = y^2 - 9
NOTE: solutions of this PDE which start at initial
conditions  y(x0) = y0  for |y0|>3 will blow-up
in finite time
'''

import numpy as np

def f(x,y):
    return y**2 - 9.0

def ysolution(x,A):
    return (3.0 + 3.0 * A * np.exp(6.0*x)) / (1.0 - A * np.exp(6.0*x))

from dirfield import dirfield
import matplotlib.pyplot as plt

dirfield(f, [-5, 5, -6, 6], 16, 25)
for A in [100.0, 10.0, 1.0, 0.0, -1.0, -10.0, -100.0, -1000.0]:
    xx = np.linspace(-5,5,201)
    plt.plot(xx, ysolution(xx,A), 'r.')
plt.xlabel('x'), plt.ylabel('y')
plt.axis([-5, 5, -6, 6])
plt.show()