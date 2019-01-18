#!/usr/bin/env python3

"""
Generate direction fields (slope fields).  See
    https://en.wikipedia.org/wiki/Slope_field
for general documentation of slope fields.

Example 1:
    import dirfield as df
    def f(x,y) : return -y
    df.dirfield(f,[0,2,-3,4])  # first argument is function
                               # second is box:  [x0,x1,y0,y1]
    df.genfig('foo.png')

Example 2:
    import dirfield as df
    df.runexample()
"""

import numpy as np
import matplotlib.pyplot as plt

def dirfield(f,xybox,mx=11,my=11,showaxes=True,axescolor='k',slopescolor='b'):
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
                     lw=3,color=slopescolor)

def genfig(name,transparent=False,trim=False):
    """
    Save to image file.  If trim then remove white margins using imagemagik.
    """
    print('saving %s ...' % name)
    plt.savefig(name,bbox_inches='tight',transparent=transparent)
    if trim:
        from subprocess import call
        call(['mogrify','-trim',name])

def runexample():
    print("generating direction field for  y' + y = x + 3 ...")
    def f(x,y):
        return x+3-y
    dirfield(f,[-3,5,0,8],mx=20,my=16,slopescolor='r')
    genfig('example-field.png',trim=True)

