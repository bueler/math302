% BRINES  Illustrate solutions x_1(t), x_2(t), x_3(t) for a problem in the
% 3.3 and 8.1 slides.  There are three connected 100 gallon tanks containing
% brine solutions.  The x_i(t) are the pounds of salt.  Initial conditions
% are chosen to be x_1(0)=30, x_2(0)=10, x_3(0)=5, just for illustration.
% Uses ODE45 to solve.

f = @(t,x) (1/100) * [-4*x(1) + 2*x(2);
                       4*x(1) - 7*x(2) + 3*x(3);
                                5*x(2) - 5*x(3)];

[tt,xx] = ode45(f,0:4:400,[30; 10; 5]);

% x_i versus t
figure(1)
plot(tt,xx)
legend('x_1(t)','x_2(t)','x_3(t)')
xlabel('t  (minutes)')
ylabel('salt  (pounds)')
print -dpdf 'brines-xvt.pdf'

% phase space
figure(2)
plot3(xx(:,1),xx(:,2),xx(:,3))
grid on
hold on
plot3(xx(:,1),xx(:,2),zeros(size(xx(:,3))),'k:')
t3 = [1 51 101];
plot3(xx(t3,1),xx(t3,2),xx(t3,3),'b.','markersize',24)
text(xx(1,1)-5,xx(1,2),xx(1,3),'   t=0','fontsize',14)
text(xx(51,1),xx(51,2),xx(51,3),'   t=200 min','fontsize',14)
text(xx(101,1),xx(101,2),xx(101,3),'   t=400 min','fontsize',14)
hold off
xlabel('x_1'),  ylabel('x_2'),  zlabel('x_3')
print -dpdf 'brines-3d.pdf'
