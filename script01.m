%Calculation of gravitational acceleration using linear approximation

%Period of movement [s]
Ttab = [1.46 1.581 1.674 1.79 1.919 1.968 2.084 2.207 2.299 2.412];

%T^2
Tkwadrattab = [Ttab(1)^2 Ttab(2)^2 Ttab(3)^2 Ttab(4)^2 Ttab(5)^2 Ttab(6)^2 Ttab(7)^2 Ttab(8)^2 Ttab(9)^2 Ttab(10)^2];

%Length of strand [cm]
Ltabcm = [50 60 70 80 90 100 110 120 130 140];

%Length of strand [m]
Ltabm = (Ltabcm * 0.01);

%plot of T^2(L)
p = polyfit(Ltabm, Tkwadrattab,1);
Tkwadrattab_fit = polyval(p, Ltabm);
plot(Ltabm,Tkwadrattab,'ro',Ltabm,Tkwadrattab_fit)

%gravitational acceleration
g=(4*pi^2)/p(1);
printf("Wartosc przyspieszenia ziemskiego wyznaczona za pomoca wahadla matematycznego: ")
disp(g);
