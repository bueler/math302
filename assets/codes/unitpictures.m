% UNITPICTURES  generate plots of unit step functions for 7.3 slides

figure(1)
plot([-5 5],[0 0],'k','linewidth',1)
hold on
plot([0 0],[-1 2],'k','linewidth',1)
text(5.1,-0.1,'t','fontsize',16)
text(-0.5,1,'1','fontsize',16)
axis([-5.5 5.5 -1 2])
plot([0 5],[1 1],'b','linewidth',4)
plot([-5 0],[0 0],'b','linewidth',4)
plot(0,0,'bo','markersize',12)
plot(0,1,'b.','markersize',30)
axis off
print -dpdf unitstep.pdf

figure(2)
plot([-1 5],[0 0],'k','linewidth',1)
hold on
plot([0 0],[-1 2],'k','linewidth',1)
text(5.1,-0.1,'t','fontsize',16)
text(-0.3,1,'1','fontsize',16)
plot([-0.1,0.1],[1,1],'k','linewidth',0.5)
axis([-1.5 5.5 -1 2])
a = 1.5;
plot([a 5],[1 1],'b','linewidth',4)
plot([0 a],[0 0],'b','linewidth',4)
plot(a,0,'bo','markersize',12)
plot(a,1,'b.','markersize',30)
text(a,-0.2,'a','fontsize',20,'color','b')
axis off
print -dpdf unitsteptrans.pdf

