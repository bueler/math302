% EXDIRFIELD  An example of a direction field using Matlab quiver.

funn = @(x, y) y - x;                          % function f(x,y) = y-x
[x, y] = meshgrid(-5:0.5:5);                   % intervals for x and y
slopes = funn(x, y);                           % matrix of slope values
dy = slopes ./ sqrt(1 + slopes.^2);            % normalize the line element...
dx = ones(length(dy)) ./ sqrt(1 + slopes.^2);  % ...magnitudes for dy and dx
h = quiver(x, y, dx, dy, 0.5);                 % plot the direction field
set(h, "maxheadsize", 0.1);                    % alter head size
