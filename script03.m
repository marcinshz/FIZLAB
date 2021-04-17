%Simulation of motion of two nonlinear oscillators
y = [pi/4; 0; -pi/4; 0];
t = linspace(0, 20, 1000);
function dydt = v(y, t)
  g = 9.81;
  R = 3;
  L = 4;
  k = 1;
  
  dydt = [y(2); -g/R * sin(y(1)) - k*(y(1)-y(3)); y(4); -g/L * sin(y(3)) - k*(y(3)-y(1));]
endfunction

Y = lsode('v',y,t);

hold on;
%plot of scillators swing angles
  title('Kat wychylenia wahadel w czasie')
  xlabel('t [s]');
  ylabel('Kat wychylenia [rad]');
  plot(t, [Y(:,1), Y(:,3)]);
hold off;

