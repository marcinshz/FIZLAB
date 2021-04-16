%voltage drop depending on the change in resistance value

E = [5 0 0];
R1 = 500;
R2 = R1;
R4 = R2;
R3 = 500000;
R5 = linspace(499,501,21);
U3 = linspace(0,0,21);

%U3 for R5
for k = 1:21
  R = [R1+R4 -R1 -R4;-R1 R1+R2+R3 -R3; -R4 -R3 R3+R4+R5(k)]
  Rinv = inv(R);
  I = Rinv.*E;
  I3 = I(2) - I(3);
  U3(k) = I3 * R3;
 end; 
 hold on;
 
 %plot
 scatter(R5,U3,"filled");
 plot(R5,U3);
 
 Io1 = I(1,1);
 Io2 = I(2,1);
 Io3 = I(3,1);

 hold off;