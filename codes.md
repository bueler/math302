---
layout: course-page
title: Codes
---

## Codes

This page will grow over the course of the semester.  It has some computer codes I wrote, either for visualization or as examples of numerical methods.  They are categorized by language (Matlab/Octave or Python), and ordered chronologically.  Note that there are online versions of Matlab ([Matlab online](https://matlab.mathworks.com/)) and Octave ([Octave Online](https://octave-online.net/)).

### Matlab/Octave: Visualization

You can use [Matlab](https://www.mathworks.com/products/matlab.html) or [Octave](https://www.gnu.org/software/octave/) with these.  (I use Octave, which is free and open source.)

* [exdirfield.m](assets/codes/F23/exdirfield.m):  This is just one example.  To generate direction fields (slope fields) in Matlab/Octave and other languages, see the [wikipedia page on slope fields](https://en.wikipedia.org/wiki/Slope_field#Software_for_plotting_slope_fields).

<!--
* [streamcyl.m](assets/codes/F23/streamcyl.m): Generate a contour figure, showing streamlines around a cylinder, for Example 5 in the slides for section 2.4.

### Matlab/Octave: Numerical methods

* [simpleeuler.m](assets/codes/F23/simpleeuler.m): Solve the simplest ODE IVP (y'=y,y(0)=1) by the Euler method.  See the slides for section 2.6.
/-->

### Python

You will need to know [Python](https://www.python.org/) to use these.

* [dirfield.py](assets/codes/F23/dirfield.py):  Generate a direction field.  I used this for images in some slides.
* [quadde.py](assets/codes/F23/quadde.py):  Draw direction field and family of solutions for dy/dx = y^2 - 9, from section 2.2.  Generates [this image](assets/codes/F23/quadde.png).  The solution family I wrote down in lecture is correct, but many solutions blow-up in finite time.

### no-programming solutions

* To generate direction fields without programming, try one of these:
    * [c3d.libretexts.org/DirectionField/index.html](https://c3d.libretexts.org/DirectionField/index.html)
    * [www.geogebra.org/m/W7dAdgqc](https://www.geogebra.org/m/W7dAdgqc)
