#!/usr/bin/env python3

"""
Generate direction fields (slope fields).  See
    https://en.wikipedia.org/wiki/Slope_field
for general documentation of slope fields.

Example 1:
    import dirfield as df
    def f(x,y) : return -y
    df.dirfield(f,[0,2,-3,4])  # first argument is function
                               # second argument is box:  [x0,x1,y0,y1]
    df.genfig('example.png')

Example 2, showing only field:
    import dirfield as df
    df.runexample1()

Example 3, showing field and solution:
    import dirfield as df
    df.runexample2()
"""

import numpy as np
import matplotlib.pyplot as plt

def dirfield(f,xybox,mx=11,my=11,showaxes=True,axescolor='k',
             slopescolor='b',slopeslinewidth=3):
    """Plots direction fields.
    Example:
        def f(x, y) : return y
        dirfield(f,[0,1,0,4])
    """
    dx = (xybox[1]-xybox[0]) / float(mx-1)
    dy = (xybox[3]-xybox[2]) / float(my-1)
    x = np.linspace(xybox[0],xybox[1],mx)
    y = np.linspace(xybox[2],xybox[3],my)
    xx, yy = np.meshgrid(x,y)

    plt.clf()
    plt.axis('off')
    if showaxes:
        plt.plot([xybox[0]-1.5*dx, xybox[1]+1.5*dx],[0,0],
                 lw=1,color=axescolor)
        plt.plot([0,0],[xybox[2]-dy, xybox[3]+dy],
                 lw=1,color=axescolor)

    lhx = 0.4*dx  # x half-length of slope lines
    lhy = 0.4*dy  # y half-length of slope lines
    for j in range(mx):
        for k in range(my):
            m = f(x[j],y[k])
            theta = np.arctan(m)
            plt.plot([x[j]-lhx*np.cos(theta),x[j]+lhx*np.cos(theta)],
                     [y[k]-lhy*np.sin(theta),y[k]+lhy*np.sin(theta)],
                     lw=slopeslinewidth,color=slopescolor)

def genfig(name,transparent=False,trim=False):
    """
    Save to image file.  If trim then remove white margins using imagemagik.
    """
    print('saving %s ...' % name)
    plt.savefig(name,bbox_inches='tight',transparent=transparent)
    if trim:
        from subprocess import call
        call(['mogrify','-trim',name])

def runexample1():
    print("showing direction field for  y' = x - y")
    def f(x,y):
        return x-y
    xybox = [-3,3,-3,3]
    dirfield(f,xybox,mx=12,my=12,slopescolor='b',slopeslinewidth=1.5)
    genfig('example-field.png',trim=True)

def runexample2():
    print("showing direction field and solution for  y' = x - y, y(0)=2")
    def f(x,y):
        return x-y
    xybox = [-3,5,0,8]
    dirfield(f,xybox,mx=20,my=16,slopescolor='b',slopeslinewidth=1.5)
    xx = np.linspace(-1.2,5.0,101)
    plt.plot(xx,xx-1.0+3.0*np.exp(-xx),'r')
    plt.plot(0.0,2.0,'k.',markersize=12)
    genfig('example-field-solution.png',trim=True)

