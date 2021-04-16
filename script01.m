%Tablica pomiar�w okres�w
Ttab = [1.46 1.581 1.674 1.79 1.919 1.968 2.084 2.207 2.299 2.412];

%Tablica pomiar�w okres�w podniesionych do kwadratu
Tkwadrattab = [Ttab(1)^2 Ttab(2)^2 Ttab(3)^2 Ttab(4)^2 Ttab(5)^2 Ttab(6)^2 Ttab(7)^2 Ttab(8)^2 Ttab(9)^2 Ttab(10)^2];

%Tablica d�ugo�ci nici w centymetrach
Ltabcm = [50 60 70 80 90 100 110 120 130 140];

%Tablica d�ugo�ci nici w metrach
Ltabm = (Ltabcm * 0.01);

%Wykres z dlugoscia podana w metrach
p = polyfit(Ltabm, Tkwadrattab,1);
Tkwadrattab_fit = polyval(p, Ltabm);
plot(Ltabm,Tkwadrattab,'ro',Ltabm,Tkwadrattab_fit)

%Wzor na przyspieszenie ziemskie
g=(4*pi^2)/p(1);
%Wyswietlenie przyspieszenia ziemskiego
printf("Wartosc przyspieszenia ziemskiego wyznaczona za pomoca wahadla matematycznego: ")
disp(g);