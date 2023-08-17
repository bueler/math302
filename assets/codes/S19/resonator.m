% RESONATOR  Solve part 4 of Mini-Project 4.

figure(1)
for step = ['a','b']
    if step == 'a'
        omega = 8;
    else
        omega = 4;
    end
    f = @(t,z) [z(2); -2*z(2)-16*z(1)+3*sin(omega*t)];
    [tt,zz] = ode45(f,[0:.01:20],[0;0]);
    plot(tt,zz(:,1)),  hold on
end
hold off,  xlabel t,  grid on,  legend('(a)','(b)')
print -dpdf plot4ab-mp4.pdf

figure(2)
f = @(t,z) [z(2); -2*z(2)-16*z(1)+3*sin(4*t)];
for step = ['b','c','d']
    x0 = 0;  xdot0 = 0;  color = 'r';
    if step == 'c'
        xdot0 = 5;  color = 'b';
    elseif step == 'd'
        x0 = 1;  color = 'g';
    end
    [tt,zz] = ode45(f,[0:.01:20],[x0;xdot0]);
    plot(tt,zz(:,1),color),  hold on
end
hold off,  xlabel t,  grid on,  legend('(b)','(c)','(d)')
print -dpdf plot4bcd-mp4.pdf

