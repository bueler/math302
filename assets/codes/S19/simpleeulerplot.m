% SIMPLEEULERPLOT  plotting version of SIMPLEEULER

xx = 0:.001:1;   yy = exp(xx);         % hi-res plot of exact solution
plot(xx,yy,'k')
hold on,  xlabel('x','fontsize',18),  ylabel('y','fontsize',18)
for N = [10 20]
    h = 1.0 / N;
    x = 0:h:1;
    y = zeros(size(x));
    y(1) = 1;
    for n = 1:N
        y(n+1) = y(n) + h * y(n);      % this IS Euler's method
    end
    if N == 10
        plot(x,y,'b.-','markersize',20)
    else
        plot(x,y,'r.-','markersize',20)
    end
end
hold off,  axis tight,  grid on
print -dpdf simpleeuler.pdf
