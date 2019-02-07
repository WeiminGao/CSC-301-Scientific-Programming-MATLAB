% Script File: Pallas
% Plots the trigonometric interpolant of the Gauss Pallas data.
 
A = linspace(0,360,13)';
D = [ 408 89 -66 10 338 807 1238 1511 1583 1462 1183 804 408]';
 
Avals = linspace(0,360,200)'; 
F = CSInterp(D(1:12));
Fvals = CSEval(F,360,Avals);
 
F0 = CSInterp0(D(1:12));
Fvals0 = CSEval(F0,360,Avals);
 
plot(Avals,Fvals,A,D,'o',Avals,Fvals0,A,D,'o')
legend('Fast solution','Original solution')
set(gca,'xTick',linspace(0,360,13))
xlabel('Ascension (Degrees)')
ylabel('Declination (minutes)')







