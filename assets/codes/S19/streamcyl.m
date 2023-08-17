% STREAMCYL  Draw streamlines around a cylinder.  Solves exercise 46(b)
% in section 2.4.

% define the function
f = @(x,y) y .* (1.0 - 1.0 ./ (x.^2 + y.^2));

% generate a grid of points
x = -3:.1:3;
[xx,yy] = meshgrid(x,x);

% draw a contour plot with black ('k')
c = -0.8:0.2:0.8;          % list of contours we want
h = contour(xx,yy,f(xx,yy),c,'k');
clabel(h)

% black-out the cylinder
hold on
theta = 0:pi/100:2*pi;  fill(cos(theta),sin(theta),'k')
hold off
axis equal

