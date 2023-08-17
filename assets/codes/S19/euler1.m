function [t, y] = euler1(f,tspan,y0,h)
% EULER1  Euler's method for ODE IVP
%    dy/dt = f(t,y),  y(t0) = y0
% Second argument is tspan = [t0, tf].  Computes steps of size h to
% approximate y(tf).  Example:
%   >> f = @(t,y) t - y^2;
%   >> [tt,yy] = euler1(f,[0,4],1,0.5);
%   >> plot(tt,yy)
% Compare IMPROVED2, RK4, and ODE45.

M = round((tspan(2)-tspan(1))/h);   % get number of steps
t = linspace(tspan(1),tspan(2),M+1);
y = zeros(size(t));
y(1) = y0;
for n = 1:M
    y(n+1) = y(n) + h * f(t(n),y(n));
end

