---
layout: course-page
title: Codes
---

## Codes

This page has some computer codes I wrote, either for visualization or as examples of numerical methods.  They are categorized by language (Matlab/Octave or Python), and for each language/purpose they are ordered chronologically.

### Matlab/Octave: Visualization

You can use [Octave Online](https://octave-online.net/) or [Matlab](https://www.mathworks.com/products/matlab.html) or [Octave](https://www.gnu.org/software/octave/) with these.  I use Octave.

* [streamcyl.m](assets/codes/streamcyl.m): Generate a contour figure, showing streamlines around a cylinder, for Example 5 in the [slides for section 2.4](assets/slides/2-4.pdf).
* [simpleeulerplot.m](assets/codes/simpleeulerplot.m): A version of [simpleeuler.m](assets/codes/simpleeuler.m) below that plots the solution for h=0.1 and h=0.05.
* [plotcensus.m](assets/codes/plotcensus.m): Plot US census data from exercise 4 in section 3.2; see [slides for section 3.2](assets/slides/3-2.pdf).
* [fitcensus.m](assets/codes/fitcensus.m): Fit the logistic model to the US census data; see [slides for section 3.2](assets/slides/3-2.pdf).
* [oilslick.m](assets/codes/oilslick.m): Solution to parts (b), (c), and (d) of Mini-Project 2.  Plots rate of change of area versus area.
* [slicker.m](assets/codes/slicker.m): Solution to parts (f) and (g) of Mini-Project 2.  Plots A(t) solution, with data superimposed.
* [massspringplot.m](assets/codes/massspringplot.m): Used to generate some figures in [slides for section 5.1](assets/slides/5-1.pdf).
* [pendmovie.m](assets/codes/pendmovie.m): Generates this [movie](assets/codes/pendmovie.gif) mentioned in [slides for section 5.3](assets/slides/5-3.pdf).  This code uses the numerical differential equation solver [ode45 from Matlab](https://www.mathworks.com/help/matlab/ref/ode45.html).  (Actually I used [ode45 from Octave](https://octave.sourceforge.io/octave/function/ode45.html).)
* [springs.m](assets/codes/springs.m): Generates this figures in [slides for section 5.3](assets/slides/5-3.pdf).
* [plotairy.m](assets/codes/plotairy.m): Generates an Airy function figure in [slides for section 6.2](assets/slides/6-2.pdf).
* [minradius.m](assets/codes/minradius.m): Generates a radius-of-convergence figure in [slides for section 6.2](assets/slides/6-2.pdf).

### Matlab/Octave: Numerical methods

* [simpleeuler.m](assets/codes/simpleeuler.m): Solve the simplest ODE IVP (y'=y,y(0)=1) by the Euler method.  See the [slides for section 2.6](assets/slides/2-6.pdf).
* [euler1.m](assets/codes/euler1.m): First-order Euler's method implemented with standard signature.  See [slides for section 9.1](assets/slides/9-1.pdf).
* [improved2.m](assets/codes/improved2.m): Second-order improved Euler's method implemented with standard signature.  See [slides for section 9.1](assets/slides/9-1.pdf).
* [rk4.m](assets/codes/rk4.m):  Fourth-order classical Runge-Kutta method implemented with standard signature.  See [slides for section 9.2](assets/slides/9-2.pdf).

### Python

You will need to know [Python](https://www.python.org/) to use these.

* [dirfield.py](assets/codes/dirfield.py): Generate a direction field.  I used this for images in some slides.
    * To generate direction fields without programming, try [desmos](https://www.desmos.com/).  For other languages see the [wikipedia page on slope fields](https://en.wikipedia.org/wiki/Slope_field); it gives easy codes in Matlab and Mathematica.
* [eulersequence.py](assets/codes/eulersequence.py): Generate sequence of figures used in [slides for section 2.6](assets/slides/2-6.pdf).
* [eulerrk4blowup.py](assets/codes/eulerrk4blowup.py): Generate a figure in [slides for section 9.2](assets/slides/9-2.pdf).

