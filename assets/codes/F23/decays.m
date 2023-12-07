% DECAYS  Plot radioactive decay curves for Exercises #1 and #2
% in Section 3.3.

x0 = 20;
lam1 = 0.138629;
lam2 = 0.004951;

for k = 1:2
    if k == 1
        t = 0:.1:30;         % interval to show x_1(t) half life
    else
        t = 0:1:400;         % interval to show x_2(t) half life
    end
    figure(k)
    x1 = x0 * exp(-lam1 * t);
    C2 = x0 * lam1 / (lam2 - lam1);
    x2 = C2 * (exp(-lam1 * t) - exp(-lam2 * t));
    x3 = x0 * (1.0 + (lam1 * exp(-lam2 * t) - lam2 * exp(-lam1 * t)) ...
                     / (lam2 - lam1));
    plot(t,x1, t,x2, t,x3);
    legend('x_1(t)', 'x_2(t)', 'x_3(t)')
    xlabel('t (days)'),  ylabel('amount'),  grid on
end
