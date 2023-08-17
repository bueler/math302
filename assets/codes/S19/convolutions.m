% CONVOLUTIONS  Generate some convolution figures for slides for section 7.4.

% f(t) = 1 - U(t-2)
% g(t) = e^{-t}
figure(1)
a = 2;
t = 0:.01:6;
plot([0 2],[1 1],'b','linewidth',2),  hold on
plot(t,exp(-t),'r','linewidth',2)
plot(t(t<a),1-exp(-t(t<a)),'k','linewidth',3)
plot(t(t>=a),exp(a-t(t>=a))-exp(-t(t>=a)),'k','linewidth',3)
plot([a 6],[0 0],'b','linewidth',2)
plot([a a],[1 0],'b:','linewidth',1)
axis([0 6 0 2]),  xlabel t
legend('f(t)=1-U(t-2)','g(t)=e^{-t}','f(t) \ast g(t)')
hold off
print -dpdf convolution1.pdf

% f(t) = U(t-2) - U(t-3)
% g(t) = e^{-t}
figure(2)
t = 0:.01:6;
tmid = 2:.01:4;
tlate = 4:.01:6;
plot([2 4],[1 1],'b','linewidth',2),  hold on
plot(t,exp(-t),'r','linewidth',2)
plot(tmid,1.0-exp(2-tmid),'k','linewidth',3)
plot([0 2],[0 0],'k','linewidth',3)
plot(tlate,exp(4-tlate)-exp(2-tlate),'k','linewidth',3)
plot([4 6],[0 0],'b','linewidth',2)
plot([2 2],[1 0],'b:','linewidth',1)
plot([4 4],[1 0],'b:','linewidth',1)
axis([0 6 0 2]),  xlabel t
legend('f(t)=U(t-2)-U(t-4)','g(t)=e^{-t}','f(t) \ast g(t)')
hold off
print -dpdf convolution2.pdf

% f(t) = sin(k t)
% g(t) = e^{-t}
kk = [1 pi];
t = 0:.01:12;
for q = 1:2
    figure(2+q)
    k = kk(q);
    plot(t,sin(k*t),'b','linewidth',2),  hold on
    plot(t,exp(-t),'r','linewidth',2)
    plot(t,exp(-t).*(sin(k*t).*exp(t)-k*cos(k*t).*exp(t)+k)/(1+k^2),...
         'k','linewidth',3)
    axis([0 12 -1.5 1.5]),  xlabel t
    grid on
    if q == 1
        fstr = 'f(t)=sin(t)';
    else
        fstr = 'f(t)=sin(pi t)';
    end
    legend(fstr,'g(t)=e^{-t}','f(t) \ast g(t)')
    hold off
    print(sprintf('convolution%d.pdf',q+2),'-dpdf')
end

