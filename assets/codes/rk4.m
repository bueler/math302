function [t, y] = rk4(f,tspan,y0,h)
% RK4  Classical Runge-Kutta order-4 method for ODE IVP
%    dy/dt = f(t,y),  y(t0) = y0
% Second argument is tspan = [t0, tf].  Computes steps of size h to
% approximate y(tf).  Example:
%   >> f = @(t,y) t - y^2;
%   >> [tt,yy] = rk4(f,[0,4],1,0.5);
%   >> plot(tt,yy)
% Compare EULER1, IMPROVED2, and ODE45.

M = round((tspan(2)-tspan(1))/h);   % get number of steps
t = linspace(tspan(1),tspan(2),M+1);
y = zeros(size(t));
y(1) = y0;
for n = 1:M
    k1 = f(t(n), y(n));
    k2 = f(t(n) + h/2, y(n) + h*k1/2);
    k3 = f(t(n) + h/2, y(n) + h*k2/2);
    k4 = f(t(n) + h, y(n) + h*k3);
    y(n+1) = y(n) + (h/6) * ( k1 + 2*k2 + 2*k3 + k4 );
end

