#!/usr/bin/env python3

"""
Generate sequence of figures for section 2.6 slides.
"""

import numpy as np
import matplotlib.pyplot as plt
import dirfield as df

def f(t,y):
    return t - y*y

df.dirfield(f,[0,4,0,3],mx=9,my=7,slopeslinewidth=1)
plt.plot(0.0,1.0,'k.',ms=16.0)
plt.xlabel('t')
plt.ylabel('y')
df.genfig('sequence-1.png',trim=True)
#plt.show()  # debug this way ...

plt.clf()
df.dirfield(f,[0,4,0,3],mx=9,my=7,slopeslinewidth=1)
plt.plot(0.0,1.0,'k.',ms=16.0)
plt.xlabel('t')
plt.ylabel('y')
t = np.linspace(0.0,4.0,5)
y = np.ones(5)
for j in range(4):
    y[j+1] = y[j] + 1.0 * f(t[j],y[j])
plt.plot(t,y,'r-',lw=2)
plt.plot(t,y,'k.',ms=16.0)
df.genfig('sequence-2.png',trim=True)

N = [4,8,16,32]
for k in range(4):
    plt.clf()
    plt.plot(0.0,1.0,'k.',ms=16.0)
    plt.xlabel('t')
    plt.ylabel('y')
    plt.plot([-0.75,4.75],[0,0],'k',lw=1)
    plt.plot([0,0],[-0.5,3.5],'k',lw=1)
    h = 4.0 / N[k]
    t = np.linspace(0.0,4.0,N[k]+1)
    y = np.ones(N[k]+1)
    for j in range(N[k]):
        m = f(t[j],y[j])
        theta = np.arctan(m)
        if k < 2:
            if k == 0:
                lh = 0.25
                slopelw = 4
            else:
                lh = 0.4
                slopelw = 2
            plt.plot([t[j]-lh*np.cos(theta),t[j]+lh*np.cos(theta)],
                     [y[j]-lh*np.sin(theta),y[j]+lh*np.sin(theta)],
                     lw=slopelw,color='b')
        y[j+1] = y[j] + h * f(t[j],y[j])
    plt.plot(t,y,'r-',lw=2)
    if k == 0:
        plt.plot(t,y,'k.',ms=16.0)
    else:
        plt.plot(4.0,y[N[k]],'g.',ms=16.0)
    plt.text(0.8,2.9,r'$h=%.3f$: $\quad$  $y(4) \approx %.5f$' % (h,y[N[k]]),fontsize=16.0)
    df.genfig('sequence-%d.png' % (k+3),trim=True)

