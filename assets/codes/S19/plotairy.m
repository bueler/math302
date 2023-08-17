% PLOTAIRY  Plot approximations to two linearly-independent solutions to
% the Airy equation   y'' + x y = 0.  The functions are
%   y1 = 1 - x^3/(3*2) + x^6/(6*5*3*2) - x^9/(9*8*6*5*3*2) + ...
%   y2 = x - x^4/(4*3) + x^7/(7*6*4*3) - x^10/(10*9*7*6*4*3) - ...
% These are not standardized in any way.  Compare built-in Matlab/Octave
% function AIRY.

x = -2:.01:8;
y = [ones(size(x)); x];
sgn = 1.0;
term = y;       % first terms in series for the two functions
r = [0 1];      % starting power for the two functions
for k = 1:20    % sum the first twenty terms
   sgn = -sgn;
   for z = [1 2]
       r(z) = r(z) + 3;                                       % updated power
       term(z,:) = (term(z,:) .* x.^3) / (r(z) * (r(z)-1));   % updated term
       y(z,:) = y(z,:) + sgn * term(z,:);
   end
end
plot(x,y(1,:),x,y(2,:))
axis([-2 8 -2.5 2.5]),  grid on,  xlabel x
legend('y_1(x)','y_2(x)','location','southeast')

