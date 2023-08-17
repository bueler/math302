% FITCENSUS  Plot fitted solution.  See PLOTCENSUS first.

% first run code that records and plots data
plotcensus;

% parameters from using Newton's method to fit
N = 197.274;
A = 49.2096;
b = 0.000158863;

t = year - 1790.0;
P = N ./ (1.0 + A * exp(-N*b*t));
hold on,  plot(year,P,'r'),  hold off

