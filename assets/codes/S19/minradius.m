% MINRADIUS  Diagram to help explain distance to zero in complex plane
% gives minimum radius of convergence of series solution to
%     (x^2+1) y'' - 6 y = 0
% if we use basepoint  x_0 = 2

plot([-2 5],[0 0],'k','linewidth',1)
hold on
plot([0 0],[-3 3],'k','linewidth',1)

th = 0:pi/200:2*pi;
plot(2+sqrt(5)*cos(th),sqrt(5)*sin(th),'b--')
plot(0,1,'ko','markersize',12)
plot(0,-1,'ko','markersize',12)
plot(2,0,'r.','markersize',20)
text(2,-0.3,'2','color','k','fontsize',16)
text(-0.6,1,'+i','color','k','fontsize',16)
text(-0.6,-1,'-i','color','k','fontsize',16)
axis off,  axis equal,  hold off

