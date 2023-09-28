% CENSUS plot some US census data

year = 1790:10:1950;   % list of 17 values
pop = [3.929, 5.308, 7.240, 9.638, 12.866, ...
       17.069, 23.192, 31.433, 38.558, 50.156, ...
       62.948, 75.996, 91.972, 105.711, 122.775, ...
       131.669, 150.697];
plot(year, pop, '.k', 'markersize', 20)
xlabel('census year')
ylabel('population in millions')
axis([1780 1960 0 160]),  grid on