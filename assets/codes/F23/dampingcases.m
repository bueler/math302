% DAMPINGCASES Generate a figure for the section 5.1 slides
% Calls MASSSPRINGPLOT.

m = 1;  k = 4;
x0 = 1;  v0 = 1;
T = 10;
lambdalist = [1/4, 2, 5];
for lam = lambdalist
    beta = 2 * m * lam;
    massspringplot(m,beta,k,x0,v0,T);
    hold on
end
hold off
legend('\lambda=1/4','\lambda=2','\lambda=5')
