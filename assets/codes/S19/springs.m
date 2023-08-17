% SPRINGS  Generate plots of hard, soft, and closed springs for 5.3 slides.

spr = {'linear','hard','soft','closed'};
for k = 1:4
    figure(k)
    plot([-3,3],[0,0],'k','linewidth',1)
    hold on
    plot([0,0],[-4,4],'k','linewidth',1)
    text(2.8,0.4,'x','fontsize',30)
    text(0.1,3.8,'F(x)','fontsize',30)
    axis off

    x = -3:.01:3;
    switch k
        case 1
            plot(x,-x,'r','linewidth',6)
            axis([-3 3 -4 4])
        case 2
            plot(x,-x,'k--')
            plot(x,-x-(x/2.5).^3,'r','linewidth',6)
        case 3
            plot(x,-x,'k--')
            plot(x,-x+(x/3.5).^3,'r','linewidth',6)
        case 4
            plot(x,-x,'k--')
            plot(x(x>=0),-x(x>=0),'r','linewidth',6)
            plot(x(x<=0),-15*x(x<=0),'r','linewidth',6)
    end

    axis([-3 3 -4 4])
    hold off
    
    name = ['spring-' spr{k} '.pdf'];
    fprintf('writing %s\n',name)
    print(name,'-dpdf')
end
