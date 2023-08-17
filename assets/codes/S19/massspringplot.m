function massspringplot(m,beta,k,x0,v0,T)
% MASSSPRINGPLOT  Make a plot on 0 < t < T of solution to
%     m x'' + beta x' + k x = 0
% with initial conditions x(0) = x0, x'(0) = v0.

omega = sqrt(k/m);  lambda = beta/(2*m);
D = lambda^2 - omega^2;
t = 0:T/200:T;   % 200 points enough for smooth graph
if D > 0
    fprintf('overdamped\n')
    Z = sqrt(D);   c = [1, 1; -lambda+Z, -lambda-Z] \ [x0; v0];
    x = exp(-lambda*t) .* (c(1) * exp(Z*t) + c(2) * exp(-Z*t));
elseif D == 0
    fprintf('critically damped\n')
    c = [x0; v0 + lambda * x0];
    x = exp(-lambda*t) .* (c(1) + c(2) * t);
else  % D < 0
    fprintf('underdamped\n')
    W = sqrt(-D);   c = [x0; (v0 + lambda * x0) / W];
    x = exp(-lambda*t) .* (c(1) * cos(W*t) + c(2) * sin(W*t));
end
plot(t,x),  grid on,  xlabel('t'),  ylabel('x')

