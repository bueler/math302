% SLICKER  Solutions to parts (f) and (g) of Mini-Project 2.

oilslick;                % gets data into variables as before
t = 0.0:20.0:3000.0;
A = 10.155 - 9.1079 * exp(- 0.0010009 * t);

figure(2)
plot(t,A,'b-')
hold on,  plot(0.0,initial(1),'ko')
for j = 2:7
    AA = initial(j);
    tt = log((AA - 10.155) / (-9.1079)) / (-0.0010009)
    plot(tt,AA,'ko')
end
hold off, xlabel('t  [minutes]')
ylabel('A(t) = area  [square miles per minute]')
