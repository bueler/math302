#!/usr/bin/env python3

"""
Generate a figure which helps me explain RK4.  It is a direction field,
a small-step Euler solution, and one step of RK4 visualized.
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

# Euler ("exact") solution with small h, in red
tf = 2.3;
M = 230;
h = tf/M;
t = np.linspace(0.0,tf,M+1)
y = np.ones(M+1)
for j in range(M):
    y[j+1] = y[j] + h * f(t[j],y[j])
plt.plot(t,y,'r-',lw=2)
df.genfig('for-rk4-dir-field.png',trim=True)

# add RK4 visualized
h = 1.0;
t0 = 0.0;
y0 = 1.0;
plt.text(t0-h/4.0,y0+0.1,'$m=k_1$',color='g',fontsize=14.0)
k1 = f(t0,y0);
plt.plot([t0,t0+h/2.0],[y0,y0+(h/2.0)*k1],'g.--',ms=14.0)
plt.text(t0+h/4.0,y0+(h/2.0)*k1-0.15,'$m=k_2$',color='g',fontsize=14.0)
k2 = f(t0+h/2.0,y0+(h/2.0)*k1);
plt.text(t0+h/4.0,y0+(h/2.0)*k2+0.1,'$m=k_3$',color='g',fontsize=14.0)
plt.plot([t0,t0+h/2.0],[y0,y0+(h/2.0)*k2],'g.--',ms=14.0)
k3 = f(t0+h/2.0,y0+(h/2.0)*k2);
plt.text(t0+0.75*h,y0+h*k3-0.15,'$m=k_4$',color='g',fontsize=14.0)
plt.plot([t0,t0+h],[y0,y0+h*k3],'g.--',ms=14.0)
k4 = f(t0+h,y0+h*k3);
y1 = y0 + (h/6.0) * (k1 + 2*k2 + 2*k3 + k4)
plt.text(t0+0.9*h,y1-0.15,'$y_1$ (RK4 result)',color='b',fontsize=14.0)
plt.plot(t0+h,y1,'b.',ms=16.0)
plt.plot([t0,t0+h],[y0,y1],'b--')
#plt.show()
df.genfig('result-rk4-dir-field.png',trim=True)

