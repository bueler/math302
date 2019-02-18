% PENDULUMCURVES  Contour plot of constant-energy curves for a pendulum

E = @(theta,dtheta) 0.5 * dtheta.^2 - 10.0 * cos(theta);

[th,dth]=meshgrid(-5:.2:5,-10:.2:10);
EE = E(th,dth);
ch = contour(th,dth,EE,[-16:8:56],'k');
% clabel(ch)     % uncomment to get labels
hold on
contour(th,dth,EE,[0 8 32],'k','linewidth',3.0);
hold off
grid on
xlabel('\theta'),  ylabel('d\theta/dt')
%print -dpdf pendulumcurves.pdf

