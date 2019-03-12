#!/usr/bin/env python3

"""
Generate a figure which helps me explain RK4.  But it is just a direction
field and Euler solution.
"""

import numpy as np
import matplotlib.pyplot as plt
import dirfield as df

def f(t,y):
    return t - y*y

df.dirfield(f,[0,2,0,1.5],mx=9,my=7,slopeslinewidth=1,slopescolor='k')
plt.plot(0.0,1.0,'k.',ms=16.0)
plt.xlabel('t')
plt.ylabel('y')
tf = 2.3;
M = 230;
h = tf/M;
t = np.linspace(0.0,tf,M+1)
y = np.ones(M+1)
for j in range(M):
    y[j+1] = y[j] + h * f(t[j],y[j])
plt.plot(t,y,'r-',lw=2)
df.genfig('for-rk4-dir-field.png',trim=True)

