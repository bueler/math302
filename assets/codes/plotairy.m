% PLOTAIRY  Plot approximations to two linearly-independent solutions to
% Airy's equation
%    y'' + x y = 0

x = -2:.01:2;
y1n12 = 1 - (1/(3*2))*x.^3 + (1/(6*5*3*2))*x.^6 - (1/(9*8*6*5*3*2))*x.^9 ...
        + (1/(12*11*9*8*6*5*3*2))*x.^12;
y2n13 = x - (1/(4*3))*x.^4 + (1/(7*6*4*3))*x.^7 - (1/(10*9*7*6*4*3))*x.^10 ...
        + (1/(13*12*10*9*7*6*4*3))*x.^13;

plot(x,y1n12,x,y2n13)
grid on,  xlabel x,  legend('y_1(x)','y_2(x)')

