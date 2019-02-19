% OILSLICK  Solutions to parts (b), (c), and (d) of Mini-Project 2.

initial = [1.047 2.005 3.348 5.719 7.273 8.410 9.117];  % enter data
tenmin  = [1.139 2.087 3.413 5.765 7.304 8.426 9.127];
rate = (tenmin - initial) / 10          % part (b):  estimate dA/dt

plot(initial,rate,'o','markersize',12)  % plot in part (c)

p = polyfit(initial,rate,1)             % part (c) fit: f(A) = p(1) A + p(2)
hold on,  plot(initial,p(1)*initial+p(2),'r--'),  hold off,  grid on
xlabel('A = initial area  [square miles]')
ylabel('dA/dt = rate of spreading  [square miles per minute]')
