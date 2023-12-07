% LOTKAVOLTERRA  Solve a predator-prey model from Exercise 11
% in Section 3.3.

T = 100;  % adjust final time to make figure or check crossing
f = @(t,z) [-0.1*z(1) + 0.02*z(1)*z(2);    % dx/dt = -ax + bxy
            0.2*z(2) - 0.025*z(1)*z(2)];   % dy/dt = cy - dxy
z0 = [6; 6];                               % x(0)=6, y(0)=6

[tt,zz] = ode45(f,0:0.1:T,z0);
plot(tt,zz),  xlabel t
legend('predators','prey')
