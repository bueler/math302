% NLSPRINGCURVES  Contour plot of constant-energy curves for a nonlinear spring.

E = @(x,dxdt) 0.5 * dxdt.^2 + 0.5 * x.^2 + (1.0/8.0) * x.^4;

[xx,dxx] = meshgrid(-5:.2:5,-10:.2:10);
EE = E(xx,dxx);
ch = contour(xx,dxx,EE,[0.1 2.^(-1:6)],'k');
%clabel(ch)     % uncomment to get labels
hold on
contour(xx,dxx,EE,[1 4 32],'k','linewidth',3.0);
hold off
grid on
xlabel('x'),  ylabel('dx/dt')
%print -dpdf nlspringcurves.pdf

