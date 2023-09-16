% SIMPLEEULER  the simplest Euler code I could write!
% finds y(1) for the problem:   y' = y,  y(0) = 1

h = 0.1;                % change to e.g. h=0.05
N = 10;                 % change to e.g. N=20
x = 0;
y = 1;
for n = 1:N+1
    exact = exp(x);
    [x, y, exact, abs(y-exact), 100*abs(y-exact)/abs(exact)]
    % following version prints a row of the table for insertion
    % into a LaTeX document:
    %fprintf('%.2f & %.4f & %.4f & %.4f & %.2f \\\\\n',...
    %        x, y, exact, abs(y-exact), 100*abs(y-exact)/abs(exact))
    y = y + h * y;      % this is Euler's method
    x = x + h;
end

