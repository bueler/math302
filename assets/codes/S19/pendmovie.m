% PENDMOVIE  Use ODE45 to generate a movie of a pendulum.
% By default the movie runs on your screen.
%
% To save a movie requires additional steps:
% (1) Create a directory frames/
% (2) Uncomment lines near bottom to generate frames which are
%     .png files in the directory.
% (3) Use a movie-generating tool like ImageMagick to turn these
%     frames into an animated .gif or .mp4 or etc.  I used command
%       $ convert -delay 10 frames/frame*.png pendmovie.gif

taxis = 0:.1:20;  % the t-axis; adjust for longer movie, slow-mo, etc.

f = @(t,z) [z(2); -7*sin(z(1))];
[tt,zz] = ode45(f,taxis,[3;0]);   % solve the DE ... the rest is plotting

figure(1)
plot(tt,zz)
xlabel t
legend('\theta(t)','d\theta/dt')
%print -dpdf pend-smooth.pdf

figure(2)
for k = 1:length(tt)
    plot([-1.3,1.3],[0,0],'k','linewidth',1.0)
    hold on    
    plot([0,0],[-1.3,1.3],'k','linewidth',1.0)
    axis off,  axis equal
    theta = zz(k,1);
    x = sin(theta);  y = -cos(theta);
    plot([0,x],[0,y],'b','linewidth',3.0)
    plot(x,y,'r.','markersize',40.0)
    timestring = sprintf('t=%.1f',tt(k));
    text(0.75,1.1,timestring,'fontsize',18.0)
    hold off
    drawnow,  pause(0.1)   % movie as you run
    %framename = sprintf('frames/frame%04d.png',k);
    %print('-dpng','-r100',framename);
end

