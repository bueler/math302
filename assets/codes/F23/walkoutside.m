% WALKOUTSIDE  Use the Euler method to solve a Newton's
% law of cooling model for a cup of coffee.  You
% carry it from a warm room to the cold outside:
%    T'(t) = - 0.3 (T(t) - T_m(t))
%    T(0) = 140
% where
%    T_m(t) = 75 - (60/pi) (pi/2 + arctan(10 (t - 5)))
% This plots T(t) in red and T_m(t) in blue on
% 0 <= t <= 10.  Units: t minutes, T(t) Fahrenheit.

% ambient temperature model
Tm = @(t) 75.0 - (60.0/pi) * (pi/2.0 + atan(10*(t - 5.0)));

% ODE:  T'(t) = f(t,T(t))
f = @(t,TT) - 0.3 * (TT - Tm(t));

% steps: need h*N = 10
h = 0.2;
N = 50;

% run Euler's, and plot result
t = 0.0;
TT = 140.0;  % initial condition
plot(t,TT,'ro'),  hold on
for n = 1:N
    TT = TT + h * f(t,TT);  % Euler's method
    t = t + h;
    plot(t,TT,'ro')
end
plot([0 5],[75 75],'k--')
plot([5 10],[15 15],'k--')
tfine = 0:.1:10;  plot(tfine, Tm(tfine), 'b:')
hold off
xlabel('t  [minutes]'),  ylabel('T(t)  [F]')
