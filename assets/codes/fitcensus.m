% FITCENSUS

uscensus;

N = 197.274;
A = 49.2096;
s = 0.962509;
b = - log(s) / 60.0;

hold on
t = year - 1790.0;
plot(year,N./(1+A*exp(-N*b*t)),'r')

